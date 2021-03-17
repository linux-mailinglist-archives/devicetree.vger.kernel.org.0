Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6ED8433F963
	for <lists+devicetree@lfdr.de>; Wed, 17 Mar 2021 20:35:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233249AbhCQTev (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Mar 2021 15:34:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36564 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233243AbhCQTek (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Mar 2021 15:34:40 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8654CC061762
        for <devicetree@vger.kernel.org>; Wed, 17 Mar 2021 12:34:40 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id ot17-20020a17090b3b51b0290109c9ac3c34so1507471pjb.4
        for <devicetree@vger.kernel.org>; Wed, 17 Mar 2021 12:34:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=aC9XfsPEhWKeOkyFve3gS/y0ZK6Rzz537p4VTrc/pes=;
        b=J7R0WNva4AWUE8efmdEYqtl6XZlVUBn+CBlU6HWx77oRXvMjetKAsiD/YUYQchl7iR
         2dUWIMmTGRS552IhNuMHn1MRe2X8gDQzUE6Lt7q3D1P1kUmDH9CicIblf5m/yUbpIH7+
         9RvzBuZs+pQx9RJHQGgaGMxoUQJYjDIi9qVR4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=aC9XfsPEhWKeOkyFve3gS/y0ZK6Rzz537p4VTrc/pes=;
        b=kbqtXWDNsmPvOMDRUH6L6Sw+FNiU5LeJyAq5SSQ043jHfSbl3wrlgaAHLcUgJSNv1v
         awce2qGZ/IdGdlyD5hsnl+W67cl3ipCMHO6rypH/TCh+LX2S2l3IWMtXmTT+w2hO9+Pn
         avZGZNyaFeZT5IpjYzUSTYB4tGNPOMatK87DtSQWKeJBMxk0MoQVAepdmbvsdouAQpwv
         oZC0LUJK9iWG1FNVmoElbKNYkc3tCbvJIuIZMSEhxO6/KVAksoPIQ/+NuKqBf+CKX+oS
         IE3M6u3uLLF8+Wxp8VtTFuZg9NCsLcPPsm/9fiaXWupbga1x1DJaTw8ctHugjTQNfFMo
         cmMQ==
X-Gm-Message-State: AOAM531bc3dTUSjFUiiL8JGR+Uj+ToWoU9MUyU10tciq27+1WTKksUxd
        rgrNXpU+hxI/iBqwt1OZBKQD+Q==
X-Google-Smtp-Source: ABdhPJzvuzh0GDbQL02R1z72e58lYtYzY2DOXtCGDAWJ1P7tMT0SK4OSOelL6P3kE8/PqHxea2fa1w==
X-Received: by 2002:a17:902:ee06:b029:e4:ba18:3726 with SMTP id z6-20020a170902ee06b02900e4ba183726mr5991813plb.17.1616009679874;
        Wed, 17 Mar 2021 12:34:39 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:3cf8:6a09:780b:f65d])
        by smtp.gmail.com with UTF8SMTPSA id v134sm20517485pfc.182.2021.03.17.12.34.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Mar 2021 12:34:39 -0700 (PDT)
Date:   Wed, 17 Mar 2021 12:34:36 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Sandeep Maheswaram <sanm@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <wcheng@codeaurora.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Doug Anderson <dianders@chromium.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, Manu Gautam <mgautam@codeaurora.org>
Subject: Re: [PATCH 1/3] dt-bindings: usb: qcom,dwc3: Add bindings for SC7280
Message-ID: <YFJZzAPo4Rh8I5lX@google.com>
References: <1615978901-4202-1-git-send-email-sanm@codeaurora.org>
 <1615978901-4202-2-git-send-email-sanm@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1615978901-4202-2-git-send-email-sanm@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 17, 2021 at 04:31:39PM +0530, Sandeep Maheswaram wrote:
> Add the compatible string for sc7280 SoC from Qualcomm.
> 
> Signed-off-by: Sandeep Maheswaram <sanm@codeaurora.org>
> ---
>  Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> index c3cbd1f..413299b 100644
> --- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> +++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> @@ -16,6 +16,7 @@ properties:
>            - qcom,msm8996-dwc3
>            - qcom,msm8998-dwc3
>            - qcom,sc7180-dwc3
> +          - qcom,sc7280-dwc3
>            - qcom,sdm845-dwc3
>            - qcom,sdx55-dwc3
>            - qcom,sm8150-dwc3

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
