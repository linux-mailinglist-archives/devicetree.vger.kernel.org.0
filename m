Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 409044BA249
	for <lists+devicetree@lfdr.de>; Thu, 17 Feb 2022 15:01:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241576AbiBQOBI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Feb 2022 09:01:08 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:37140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241693AbiBQOBB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Feb 2022 09:01:01 -0500
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D56032B101A
        for <devicetree@vger.kernel.org>; Thu, 17 Feb 2022 06:00:41 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: dmitry.osipenko)
        with ESMTPSA id B0F181F45C8A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1645106440;
        bh=ssJasQQ8weULUqHF5Y87VL+8ytcuA+D5QpQWHyuRV2k=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=e+8D2NrfmVm3obXlqpX0Z6PwoRJRYhkdF5E7yreEMnY4/q4bLQZcy6CW0m6BTinMu
         49KQmGTnQMM79aBTQQUP8VvzCuJK4AC8qouh9Fl625xa9Z5muNHnT4xOwa/lWtykqR
         eiDNDtCPiXivs71Bs+sSQfP+9J93HvG8hMTWWSCy5LarVdWD2xqWn1Jj9lPu7hN5+k
         nC9BorluLt0D+ovNoo+kFNk/24cJRyLUn/dHx1sIWIughQbk5qjoud8EM8w/6VbnhN
         IjKvG8oP2nZhLA5HC5qn8kLrvPggf/R2UUBfQhhK4uEGwK8OudORHZujtQjjRt6pU9
         Yh4JvrQPU7aGg==
Message-ID: <f5abe6aa-473a-a00d-2bc5-b8a1d0560d1f@collabora.com>
Date:   Thu, 17 Feb 2022 17:00:37 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v6 13/23] drm/rockchip: dw_hdmi: Set cur_ctr to 0 always
Content-Language: en-US
To:     Sascha Hauer <s.hauer@pengutronix.de>,
        dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Sandy Huang <hjc@rock-chips.com>,
        Douglas Anderson <dianders@chromium.org>,
        linux-rockchip@lists.infradead.org,
        Michael Riesch <michael.riesch@wolfvision.net>,
        kernel@pengutronix.de, Yakir Yang <ykk@rock-chips.com>,
        Andy Yan <andy.yan@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org
References: <20220217082954.2967889-1-s.hauer@pengutronix.de>
 <20220217082954.2967889-14-s.hauer@pengutronix.de>
From:   Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20220217082954.2967889-14-s.hauer@pengutronix.de>
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

17.02.2022 11:29, Sascha Hauer пишет:
> From: Douglas Anderson <dianders@chromium.org>
> 
> Jitter was improved by lowering the MPLL bandwidth to account for high
> frequency noise in the rk3288 PLL.  In each case MPLL bandwidth was
> lowered only enough to get us a comfortable margin.  We believe that
> lowering the bandwidth like this is safe given sufficient testing.

There are no device-trees that use "rockchip,rk3288-cru", AFAICS..

Was this change tested on a non-RK3288 devices?
