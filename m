Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 028A84B442F
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 09:33:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232819AbiBNIdM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 03:33:12 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:54614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242031AbiBNIdK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 03:33:10 -0500
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC89925C72
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 00:33:03 -0800 (PST)
Received: by mail-pf1-x436.google.com with SMTP id p10so7359572pfo.12
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 00:33:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=MQIMrUbmJr4HGjKCakRsNk9/9OfJlXhm8q7RlUKXMaI=;
        b=vsgHU6bQxQM9c6c5kUJ/voPa1pHJu59MJIMpC2rAYxd36SbLN7XVj3m5zz6mLbc3Hy
         nTG9mtMogq/DDitVg42I+zJoApJuXaaw4c1wZJw4NLK7GVzACsLOi5aFm/ezh9QXD2Ol
         p5he31YPRq/udxq4rj0tOBRDMmECIRHng4jsmcbyN24nXEzfh+CgfdkyYXny0HQb5+vN
         exjYJKRoaduRAicNjlChU8TRBzdr12KIm+mCWEYSB0Uk46jihYWLg8+pZ4GpGlpiOAfw
         U8jLqA0P3lmDmwJKWloqe6rx/h+c1BaGn+kNXpmD5Y0GBXAEaAfXACHSEzb1PdKGQKDi
         AyJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=MQIMrUbmJr4HGjKCakRsNk9/9OfJlXhm8q7RlUKXMaI=;
        b=P3l1Gc45zPONQRsx9VGULAUhoxGgGjIl+w3C+G5vjAFmHL8nqqwywS397sCKtnkoj6
         4ZftkFim6comhT4TcIHSkeZdnHLhiKaylQr1nZcp5rbNMfPJ+dC6G/Vcv1KIyjdVStnc
         XYgLjr0Oh6LWqsItEUuWjEPciwSeDzakX+6D4I2s18rkE/8OwUcL1nlZZA+NlQizaxll
         75AOYqi0yjJx7K6m0LM3YuEPFyfYfh7/8nUm1F9Ip6JOaZEI86jmCeif5k7vU1jW+Ao3
         QqTBLyWC01FmKEIsMn0z4056+rMNI/vH9ZN61RPhEjceBUrOZmgBSf/Xg0TIKpgBKli1
         Vs5g==
X-Gm-Message-State: AOAM532B1kGhs/FW/EOg+qdHhwvyvVNgKFL80aQebmG0XucKUxf2KyZn
        3GqJYBzVtqK5hmNlY3tIxdZ/
X-Google-Smtp-Source: ABdhPJx/toKkqhnRa/DQ5aFWSCH56pBGK5bwvQVAuo9GFs8uPRfPVABiVr7YvlfStyOmaEfhC1HniQ==
X-Received: by 2002:a62:e419:: with SMTP id r25mr3685087pfh.24.1644827583233;
        Mon, 14 Feb 2022 00:33:03 -0800 (PST)
Received: from thinkpad ([2409:4072:817:5a6f:3104:62c0:1941:5033])
        by smtp.gmail.com with ESMTPSA id t15sm3411815pgu.13.2022.02.14.00.32.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Feb 2022 00:33:02 -0800 (PST)
Date:   Mon, 14 Feb 2022 14:02:57 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Rohit Agarwal <quic_rohiagar@quicinc.com>
Cc:     agross@kernel.org, bjorn.andersson@linaro.org,
        jassisinghbrar@gmail.com, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 1/8] dt-bindings: mailbox: Add binding for SDX65 APCS
Message-ID: <20220214083257.GA3494@thinkpad>
References: <1644821668-18073-1-git-send-email-quic_rohiagar@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1644821668-18073-1-git-send-email-quic_rohiagar@quicinc.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Feb 14, 2022 at 12:24:28PM +0530, Rohit Agarwal wrote:
> Add devicetree YAML binding for SDX65 APCS GCC block. The APCS block
> acts as the mailbox controller and also provides a clock output and
> takes 3 clock sources (pll, aux, ref) as input.
> 
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

> ---
>  Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
> index 01e9d91..688ae8b 100644
> --- a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
> +++ b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
> @@ -91,6 +91,7 @@ allOf:
>          compatible:
>            enum:
>              - qcom,sdx55-apcs-gcc
> +            - qcom,sdx65-apcs-gcc
>      then:
>        properties:
>          clocks:
> -- 
> 2.7.4
> 
