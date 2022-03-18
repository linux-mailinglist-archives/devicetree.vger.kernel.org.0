Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5178E4DDBC0
	for <lists+devicetree@lfdr.de>; Fri, 18 Mar 2022 15:35:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237327AbiCROgV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Mar 2022 10:36:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237338AbiCROgU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Mar 2022 10:36:20 -0400
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82FD52D4D47
        for <devicetree@vger.kernel.org>; Fri, 18 Mar 2022 07:35:00 -0700 (PDT)
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com [209.85.208.200])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 7F0183F194
        for <devicetree@vger.kernel.org>; Fri, 18 Mar 2022 14:34:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647614092;
        bh=G59MB2rKDZvvgy8UDYIpU7naKS/ynlgqMNWbSSznKgc=;
        h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
         Content-Type:In-Reply-To;
        b=TQyKbKABJbden6rgW2+Uo9l9Fi9ajSswIZmnIr3eKkLrHf3CIoFR9BkHdloQ3aJ0z
         nTmoth71LQUt9lpNdovAY0KSl+znjgm9ZHjy5IZpUwk/IL6mJIqimMS9J17Mk7qCX7
         1bxltTzvMVo5eisG7vn6Op+llnUrKhfH/5SB4PZMhHZkdnF04hsXtkJjIKmLJ5+ZTN
         pd8Tk/C9VkFpDQcBmd7UykHDmSL0JaBRhwLbmpnfvQTFJXwNfj3NLPMAM8fBpJG75v
         +5ZmkKppz5zFRT8cndiI+Xc1Eu+oecgEjtMUDpeGoI9DInz8S4HBMCVx2nIypzOFut
         KRqyrKnqRQ/9g==
Received: by mail-lj1-f200.google.com with SMTP id b24-20020a2e8958000000b00247e2570100so3515190ljk.8
        for <devicetree@vger.kernel.org>; Fri, 18 Mar 2022 07:34:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=G59MB2rKDZvvgy8UDYIpU7naKS/ynlgqMNWbSSznKgc=;
        b=n/d1FffksSFijfAzaUNjerpPmFFhnRAAuLi1N94lIvLHIbcofQlawautkjOtFqQS2M
         wzd3nOQZUWFSNaprgIcMQAIbT5YOwAUWGXDSDPJgdr/nTy0nM9gwpGIwAys7Qt5LYyOI
         hK1aPlgKgGW7E41soZ7njC+Hs1uE+596FB5QLqhsoNUzxJ6tMyB/nXxnbSvtrivKmaoR
         /AA0cYxz2RcmRiIlI0k+X9OrsuzQFHESAneSfBxVF+brWS3q1jwE6UXy/UsJytNZ+gcj
         pVsg+LxjH5fIUn3sqzfCO8zjJjZBxJF9ajCAXGTddQoVw6GkmarYAVen2dEJZe/2J/s/
         pjAQ==
X-Gm-Message-State: AOAM533Mu2+d76Z/z1RBPK6slXJDlD8b+jJ00aotcnBK0AaIKS3SzUB0
        HSwzi9iFc0V9Ha56TKOydDTtR7nbVUkt0j39hZrQ6B1jmtVdJMN7rOQjDU0vCk/0gnrVoLbB47J
        LJyQpXyPuXT7NOVp9TcaXFFWDffOJGWb8SUNXLPc=
X-Received: by 2002:a2e:a7d3:0:b0:247:f21a:e0af with SMTP id x19-20020a2ea7d3000000b00247f21ae0afmr6261584ljp.221.1647614092020;
        Fri, 18 Mar 2022 07:34:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxYgrUVMRThi856oDBUSvgPNA/pjNqABryHQzPgFXFCiJ70xVg0233APDMbHBSvluNFcVd+hw==
X-Received: by 2002:a2e:a7d3:0:b0:247:f21a:e0af with SMTP id x19-20020a2ea7d3000000b00247f21ae0afmr6261570ljp.221.1647614091815;
        Fri, 18 Mar 2022 07:34:51 -0700 (PDT)
Received: from krzk-bin (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.googlemail.com with ESMTPSA id bt22-20020a056512261600b00445be337da5sm878390lfb.60.2022.03.18.07.34.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Mar 2022 07:34:51 -0700 (PDT)
Date:   Fri, 18 Mar 2022 15:34:48 +0100
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Dinh Nguyen <dinguyen@kernel.org>
Cc:     hminas@synopsys.com, gregkh@linuxfoundation.org,
        robh+dt@kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: agilex: use the compatible
 "intel,socfpga-agilex-hsotg"
Message-ID: <20220318143448.j5cqes46m3yq277r@krzk-bin>
References: <20220125161821.1951906-1-dinguyen@kernel.org>
 <20220125161821.1951906-3-dinguyen@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220125161821.1951906-3-dinguyen@kernel.org>
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 25, 2022 at 10:18:21AM -0600, Dinh Nguyen wrote:
> The DWC2 USB controller on the Agilex platform does not support clock
> gating, so use the chip specific "intel,socfpga-agilex-hsotg"
> compatible.
> 
> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
> ---
>  arch/arm64/boot/dts/intel/socfpga_agilex.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
> index 0dd2d2ee765a..f4270cf18996 100644
> --- a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
> +++ b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
> @@ -502,7 +502,7 @@ uart1: serial@ffc02100 {
>  		};
>  
>  		usb0: usb@ffb00000 {
> -			compatible = "snps,dwc2";
> +			compatible = "intel,socfpga-agilex-hsotg", "snps,dwc2";

In the same patchset you sent a bindings change which is contradictory
to this DTS change.

This is wrong here and dtbs_check will complain.
