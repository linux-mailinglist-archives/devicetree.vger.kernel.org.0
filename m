Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A5D604C3644
	for <lists+devicetree@lfdr.de>; Thu, 24 Feb 2022 20:56:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233995AbiBXT4k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Feb 2022 14:56:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55646 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234063AbiBXT4k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Feb 2022 14:56:40 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 0E7C425D6F2
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 11:56:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1645732569;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=1qNwgK/uABbR31RJ+c5U+2VE5X9fztouz4y0ZP2I2dA=;
        b=TA95xsvR1CwRJjLvlrNd/Pfb6ENrB/MeanR2s9UHLn4aWRKr+FNhmbmWvdmg9w30I2DA/9
        t0cP/ZufmYQapHkio71bYyASzR+ACzHknwuzbHSKilxuDsRyHRf0x3qcgzO/P0Sg4hGx+O
        PyN/MuwDVNVRotQAxFsizXa7sYWeUpo=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-629-HYvLm-fcMo-iccdVJDGncg-1; Thu, 24 Feb 2022 14:56:08 -0500
X-MC-Unique: HYvLm-fcMo-iccdVJDGncg-1
Received: by mail-qt1-f199.google.com with SMTP id o19-20020a05622a045300b002dd26442ed0so412025qtx.20
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 11:56:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=1qNwgK/uABbR31RJ+c5U+2VE5X9fztouz4y0ZP2I2dA=;
        b=o5KNE72uPOAjiYt5DOKPUWxS+bh4V9qkQGap3KYz0W09EMWnE/TndpHe7pLxMPzo/g
         A9DJffSW8l/cn8OXsm+DIQ2un3h+YblIKYW6+EpKQTKtmNTKoKgsh8aiqKfQb0I0iiaX
         4BFQd003gqTjfaloIrqeUlvBrH/g1y2Ebb/ETL0Fbhq+/Qfq9DFQ2mJSeovdGgSl2RD0
         OnTiNCEgDH0VJcPGZoSc6en8Vg73MoQo8qATms8js7o5YVi/scjLw2slAIdpux+0HEdC
         K3u/0uEpm+2hO8GwIN13Ex2BVo3sNn1BhWrMoJ5GIQOyzv3Yl2aRLGSF2SDgyfMg0Y1M
         Q2BQ==
X-Gm-Message-State: AOAM532TE/y0BiZpfg7TLRH1TBfZuRlnXnUuYyevJnFlAf9j6RKaDZw5
        6nFH9fcvvJeNDyvD8m1nwJ9Oc3O1rl54DgI7Byd8XyhuxWp0jBZi320FD6rzw9NwsMreMXlH1Pq
        ZBIO1Qexk/+E56LUYoShc1g==
X-Received: by 2002:a05:622a:1794:b0:2de:697:e565 with SMTP id s20-20020a05622a179400b002de0697e565mr3854570qtk.563.1645732567562;
        Thu, 24 Feb 2022 11:56:07 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyieQkBq6bdToT4b9k6NP7ftnGGYeZ5NthEMufE6USKb5SeS/kX9bX/y6DutdnEf+GSAvQ1gA==
X-Received: by 2002:a05:622a:1794:b0:2de:697:e565 with SMTP id s20-20020a05622a179400b002de0697e565mr3854553qtk.563.1645732567344;
        Thu, 24 Feb 2022 11:56:07 -0800 (PST)
Received: from fedora (modemcable200.11-22-96.mc.videotron.ca. [96.22.11.200])
        by smtp.gmail.com with ESMTPSA id g1-20020ac87d01000000b002d5c8226f17sm183732qtb.7.2022.02.24.11.56.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Feb 2022 11:56:07 -0800 (PST)
Date:   Thu, 24 Feb 2022 14:56:04 -0500
From:   Adrien Thierry <athierry@redhat.com>
To:     Peter Robinson <pbrobinson@gmail.com>
Cc:     Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Lee Jones <lee.jones@linaro.org>,
        Emma Anholt <emma@anholt.net>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Russell King <linux@armlinux.org.uk>,
        Arnd Bergmann <arnd@arndb.de>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v4 12/15] drm/v3d: Add support for bcm2711
Message-ID: <Yhfi1DdlHPXzWAGc@fedora>
References: <20220213225646.67761-1-pbrobinson@gmail.com>
 <20220213225646.67761-13-pbrobinson@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220213225646.67761-13-pbrobinson@gmail.com>
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

> @@ -193,6 +193,7 @@ static const struct drm_driver v3d_drm_driver = {
>  static const struct of_device_id v3d_of_match[] = {
>  	{ .compatible = "brcm,7268-v3d" },
>  	{ .compatible = "brcm,7278-v3d" },
> +	{ .compatible = "brcm,bcm2711-v3d" },
>  	{},
>  };

The downstream tree [1] uses 'brcm,2711-v3d'. Is there a reason for not
using the same compatible string ? Having the same string would allow
using downstream dtbs (and overlays) with the upstream kernel.

Adrien

[1] https://github.com/raspberrypi/linux/blob/rpi-5.15.y/drivers/gpu/drm/v3d/v3d_drv.c

