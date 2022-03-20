Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 909D04E1BB0
	for <lists+devicetree@lfdr.de>; Sun, 20 Mar 2022 13:39:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245087AbiCTMk4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Mar 2022 08:40:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245084AbiCTMk4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Mar 2022 08:40:56 -0400
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EA2C56419
        for <devicetree@vger.kernel.org>; Sun, 20 Mar 2022 05:39:33 -0700 (PDT)
Received: by mail-oi1-x233.google.com with SMTP id o64so13703347oib.7
        for <devicetree@vger.kernel.org>; Sun, 20 Mar 2022 05:39:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=VXZQ9cDhHIRkiRYLKMsYJJMv5OJo8ExgGi/KH8XAfZc=;
        b=oNRh+7kdfH0XJdH7+TkgJ1N1Mt+B6Zdqf5Ip5o7qkmevPOzfXLHD8LkkDpz0ixkRIF
         3vIjZBvVzlbcXbe5BclnNubn3Pn+HXPEc1anB27w6/TnbPNB3yWG3Aka3DmQzi4eNjRY
         5Zp9Lcnj3TDQhGXXRTu0b2iN7UVDkm7kQRWrKuv2z2+wtGu5hqL+r9wR2vL1ihlPe1MZ
         h3zO+nRUUR8kY5gwo1QqNdZqphH1yysr6z2XT/gUwrMlR0TH5kvK2ojSj1GXw8FgBCU+
         1Rox6yg3eLIM4Mt095ObKwlhu4VrgciFOR74MM5+oBKw5hwpgVAEGYCQf0V3JL52yQlM
         6Tvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=VXZQ9cDhHIRkiRYLKMsYJJMv5OJo8ExgGi/KH8XAfZc=;
        b=uesqD8G/uF1fUcHyb/GuTcv2hGAxXNgDP7gCyr3duqLuewbuhdHmZvL5iABZEvx+WZ
         XFcGd01HCJlPLD1qiyIbhXvKyHY/0zE6W00nkDC6fQoibmQepnDGdZdf7Qe7YyoVm0HW
         RssPcc3OG3uXLMTBIxpWLFSZC4NXMjg7mxySJpUOoouTJxvxsLMhf0E4yXXD/08dd2PH
         hBMqTuIhAJzlz/p6nftc6zkAqDLy2gdLFHkBECPBv3sLwVJFSqACKkUAnllUwVoHZ3oa
         Uw4hYb8EknZxSgqgJmbb/lJ40bLv8LfWCTA3IZZKoCUXAoI7oiPr3aQXoL6cp5feSKNf
         PXOw==
X-Gm-Message-State: AOAM530R4KpMS98ZRerOmMTPHMdBggoi3hYbRFzOGDHRJ7q75dKhsoUH
        wlafb433eiGHp58GDnUhfFtrtg==
X-Google-Smtp-Source: ABdhPJxZsRRfxgsibtCeV2kzOvAi8AUF3QtWGNroi4KM85J3+ZnZqUkCW7njnF8sqpLhanofO6L/xA==
X-Received: by 2002:aca:ad15:0:b0:2da:692e:fe97 with SMTP id w21-20020acaad15000000b002da692efe97mr11772950oie.26.1647779972622;
        Sun, 20 Mar 2022 05:39:32 -0700 (PDT)
Received: from eze-laptop ([186.122.18.6])
        by smtp.gmail.com with ESMTPSA id v24-20020a9d5a18000000b005ad458facbdsm6329043oth.27.2022.03.20.05.39.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Mar 2022 05:39:32 -0700 (PDT)
Date:   Sun, 20 Mar 2022 09:39:26 -0300
From:   Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To:     Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc:     linux-media@vger.kernel.org, Linux-rockchip@lists.infradead.org,
        devicetree@vger.kernel.org, heiko@sntech.de, hverkuil@xs4all.nl
Subject: Re: [PATCH v2 3/3] dt-bindings: media: rockchip-vpu: Add RK3568
 compatible
Message-ID: <YjcgflUuQlFbVM/1@eze-laptop>
References: <20220214212955.1178947-1-piotr.oniszczuk@gmail.com>
 <20220214212955.1178947-3-piotr.oniszczuk@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220214212955.1178947-3-piotr.oniszczuk@gmail.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Piotr,

On Mon, Feb 14, 2022 at 10:29:55PM +0100, Piotr Oniszczuk wrote:
> From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
> 
> RK356x has Hantro G1 video decoder capable to decode MPEG2/H.264/VP8
> video formats.
> 
> This patch adds RK3568 compatible in rockchip-vpu dt-bindings.
> 
> Tested on [1] with FFmpeg v4l2_request code taken from [2]
> with MPEG2, H.642 and VP8 samples with results [3].
> 
> [1] https://github.com/warpme/minimyth2
> [2] https://github.com/LibreELEC/LibreELEC.tv/blob/master/packages/multimedia/ffmpeg/patches/v4l2-request/ffmpeg-001-v4l2-request.patch
> [3] https://github.com/warpme/minimyth2/blob/master/video-test-summary.txt
> 
> Signed-off-by: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

This dt-binding change looks trivial, so I guess it's fine
taking it directly via the media tree?

Thanks,
Ezequiel

> ---
>  Documentation/devicetree/bindings/media/rockchip-vpu.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> index bacb60a34989..6cc4d3e5a61d 100644
> --- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> +++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> @@ -23,6 +23,7 @@ properties:
>            - rockchip,rk3328-vpu
>            - rockchip,rk3399-vpu
>            - rockchip,px30-vpu
> +          - rockchip,rk3568-vpu
>        - items:
>            - const: rockchip,rk3188-vpu
>            - const: rockchip,rk3066-vpu
> -- 
> 2.29.2
> 
