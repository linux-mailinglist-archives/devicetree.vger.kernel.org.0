Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B0B544B764B
	for <lists+devicetree@lfdr.de>; Tue, 15 Feb 2022 21:49:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234916AbiBOTrz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Feb 2022 14:47:55 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:33828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232560AbiBOTry (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Feb 2022 14:47:54 -0500
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C57CDEAD
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 11:47:44 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: dmitry.osipenko)
        with ESMTPSA id 3ABF71F449B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1644954463;
        bh=+wF39v+i9uxNDfcWDhypRIJ638tyJz2rqw6HQGEMdlQ=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=d3zn21eufiv2dWW4/zfxwV3et55Zy0Hdl5er4draQrp9tYcMKEmp7DJwOUM524+48
         mBWMq1rflGWirNr/0VaAEkK1rWaaxQWAo6plZcUOdk0527vp9Xus39ypxCTCMV3TFu
         YEMLg33T4FTWV0+RvlQiWq4W3ywruzN+9dpGOPjLCffuICXcjjZUopehbyhdYhwKdl
         UPPHWlpcoWwaKFHdAOFCP3IWD+ylbYl7TugczKA8EpPWeP4zWJfbmQAZV27UM1w6uG
         fXbS6U2JrEbQ2tvFk3zQDwcT2nKZcphvCGUmU3iZDySC4Gjk43oZn6IKmzc35EppMK
         BCAedlwL6vjFg==
Message-ID: <09ed17be-5780-011b-6801-87a5afd4e907@collabora.com>
Date:   Tue, 15 Feb 2022 22:47:39 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v5 22/23] drm: rockchip: Add VOP2 driver
Content-Language: en-US
To:     Sascha Hauer <s.hauer@pengutronix.de>,
        dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Sandy Huang <hjc@rock-chips.com>,
        linux-rockchip@lists.infradead.org,
        Michael Riesch <michael.riesch@wolfvision.net>,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org
References: <20220209095350.2104049-1-s.hauer@pengutronix.de>
 <20220209095350.2104049-23-s.hauer@pengutronix.de>
From:   Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20220209095350.2104049-23-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,UNPARSEABLE_RELAY autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


09.02.2022 12:53, Sascha Hauer пишет:
> +static irqreturn_t vop2_isr(int irq, void *data)
> +{
> +	struct vop2 *vop2 = data;
> +	const struct vop2_data *vop2_data = vop2->data;
> +	uint32_t axi_irqs[VOP2_SYS_AXI_BUS_NUM];
> +	int ret = IRQ_NONE;
> +	int i;
> +
> +	/*
> +	 * The irq is shared with the iommu. If the runtime-pm state of the
> +	 * vop2-device is disabled the irq has to be targeted at the iommu.
> +	 */
> +	if (!pm_runtime_get_if_in_use(vop2->dev))
> +		return IRQ_NONE;
> +
> +	for (i = 0; i < vop2_data->nr_vps; i++) {
> +		struct vop2_video_port *vp = &vop2->vps[i];
> +		struct drm_crtc *crtc = &vp->crtc;
> +		uint32_t irqs;
> +
> +		irqs = vop2_readl(vop2, RK3568_VP_INT_STATUS(vp->id));
> +		vop2_writel(vop2, RK3568_VP_INT_CLR(vp->id), irqs << 16 | irqs);
> +
> +		if (irqs & VP_INT_DSP_HOLD_VALID) {
> +			complete(&vp->dsp_hold_completion);
> +			ret = IRQ_HANDLED;
> +		}
> +
> +		if (irqs & VP_INT_FS_FIELD) {
> +			unsigned long flags;
> +
> +			drm_crtc_handle_vblank(crtc);
> +			spin_lock_irqsave(&crtc->dev->event_lock, flags);

IRQ is disabled inside of ISR(), no need to save/restore the flags.
