Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2F7016A861F
	for <lists+devicetree@lfdr.de>; Thu,  2 Mar 2023 17:18:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229529AbjCBQS4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Mar 2023 11:18:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229681AbjCBQS4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Mar 2023 11:18:56 -0500
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com [IPv6:2607:f8b0:4864:20::b2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F1F913D57
        for <devicetree@vger.kernel.org>; Thu,  2 Mar 2023 08:18:47 -0800 (PST)
Received: by mail-yb1-xb2f.google.com with SMTP id i6so4076586ybu.8
        for <devicetree@vger.kernel.org>; Thu, 02 Mar 2023 08:18:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3EhQnubxJM8atfjMpN5zRydzRFKsqPB0tEX95z/zlwA=;
        b=dL/fAserc+UcXTzCNcuI+plQ0mMCZshyo/7rXL7gQbpTLH343r6Avz9kytbFm0Gs+C
         VGMOe850hWbu8oaREuB+RdLEu8BX12vyFxjO0UUOaU5+hL8Vh6uurEFaVs0syAQTFQX+
         9XvdSjBPGpm5H1tkOXrJMBol9Cn/bbzpIKH1kpEGVoStWfx6ZMns8DCWngz11ugzwm4O
         MScYyKt5shM7gEF8qZ9uw+1e9Oi3FYL6lXlCCYs5anqz5nynPXXSQ/neVgRuwnPK0Nhy
         qux53flZL1Zv4ScqAw6ZUiYIk0Mu8PeEpR/5Mo0nOZgZ3oEFlSwuyly0s+dFjJ3b6Wiw
         Ilzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3EhQnubxJM8atfjMpN5zRydzRFKsqPB0tEX95z/zlwA=;
        b=5lCqI2xpjkc/ae5Xe9RJZHSZyoTtnwx/2+F/Aywqk0L18KsjxWUOSwxlpwW9E2klJk
         Yx0mvaQz17HwyW0leATSM/ucq4HE/5sF4pvw5T2RKIqYxqGzX1X/DjdjoimfeoF//Tmh
         PvlqnGLDdXrAXKkSiEHZWjmA7BSc+8mA5XVgEAvj730wcmxBtP53hhqUPM99CHg8wXvm
         ZcdNmqZsdyyN/f8HAyVS5Me+mRZXNOmFWUBkQtI+esmmYjGC/0H2G/yiByeHxUaO2uLc
         4hMCFC1lI6DcLLOCW+obVoyEXq674vSYu9GiVUOxXOoeqxTDwAwz2wR1fgCjUI2H4I9D
         s8zQ==
X-Gm-Message-State: AO0yUKWw44P0IXKIDWkniBD5Wft2GDCKy9n4yROV2lCL0J0Frrl//UYK
        blmB6ADcEvPDddsoSOF6TwVYKWW9WVRqxIQ+JkdxeA==
X-Google-Smtp-Source: AK7set9g2RG4Uro281EWN1PXA7Eh7yjnAseXqmszJ+0KCjr92KyYnLJOcsVvcxZJDCj0gy1YvXwiAmBPEggDnVm/bAE=
X-Received: by 2002:a5b:892:0:b0:9fe:195a:ce0d with SMTP id
 e18-20020a5b0892000000b009fe195ace0dmr3839749ybq.10.1677773926682; Thu, 02
 Mar 2023 08:18:46 -0800 (PST)
MIME-Version: 1.0
References: <cover.1677749625.git.quic_varada@quicinc.com> <405a87eebf3c6a971def16122b70158dd8c7ed03.1677749625.git.quic_varada@quicinc.com>
In-Reply-To: <405a87eebf3c6a971def16122b70158dd8c7ed03.1677749625.git.quic_varada@quicinc.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Thu, 2 Mar 2023 18:18:35 +0200
Message-ID: <CAA8EJpqoocEYZPsaBe-pQ92ikLCAZD5hV46NZBC29pNv7U4dGg@mail.gmail.com>
Subject: Re: [PATCH 8/8] arm64: dts: qcom: ipq9574: Enable USB
To:     Varadarajan Narayanan <quic_varada@quicinc.com>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 2 Mar 2023 at 11:57, Varadarajan Narayanan
<quic_varada@quicinc.com> wrote:
>
> Turn on USB related nodes
>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dts | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dts b/arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dts
> index 8a6caae..6a06ca4 100644
> --- a/arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dts
> @@ -121,3 +121,7 @@
>  &xo_board_clk {
>         clock-frequency = <24000000>;
>  };
> +
> +&usb3 { status = "ok"; };
> +&ssphy_0 { status = "ok"; };
> +&qusb_phy_0 { status = "ok"; };

Please follow an example of how it is done on other platforms. DT
nodes are sorted, newlines and empty lines are inserted in proper
places.

> --
> 2.7.4
>


-- 
With best wishes
Dmitry
