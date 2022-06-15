Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4FAED54D4A5
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 00:37:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349844AbiFOWhR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 18:37:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349081AbiFOWhQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 18:37:16 -0400
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com [IPv6:2607:f8b0:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A11605638C
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 15:37:15 -0700 (PDT)
Received: by mail-pg1-x531.google.com with SMTP id l4so11602228pgh.13
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 15:37:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=GRHdRSzFMxwoFdaZR0/TOUzE2UdOTq9/KsNdNMAbPEQ=;
        b=ROutpp9GM5ySffls8Oyo5O8tiCc/B9MYKdCOxyh6uE+Ms9GtG+CzZdthhed7e3K8dN
         Y1i/K5swfvKlIGkrrrFt+gbvYBdN8lLSwZVIpCNBcNCmcv4tbOZTakac1uNGxHaK53GB
         +/z4NguYiKnqvYCzJo1E8e0hYM1C2U7DpjPsZgST+pCcb+bdo+FWVVHfhGGy5JR2WFgQ
         T13mAEK6z2RDJd7O6NvpxzhShoVSNAjIjb117S/gTeMHjT5z0szQ319MC22jryHrPIWo
         xy34PjfAeVrtjqJa45bglclpcNy61/xA3+JnP+xLnR2QaQ12I4flzH7ieJxbMm/1Nsto
         sDMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=GRHdRSzFMxwoFdaZR0/TOUzE2UdOTq9/KsNdNMAbPEQ=;
        b=R9hdnkJXvncJrhZG6PjWVR5W4rHvVE0GDmhzgk8EOirMd7dfcO4gBe1Lk6AkwfgEPq
         +I9/dhw+T4gco7EhfBly6VWV8Jp/SYC88RsD+q6rAo7J9pV2H1ar5ca26+tYQaZSWelv
         5KWEDacZ0HRT9elnWdRMP+d7cKlHPnKkJ7vnalTnkAOjn67yJ98X3hGd4IgalHa/ylfM
         hUwIg546YX7la6Yi8MW+1R2H2eJXtLfInAC/iighqr+3kqXjzFLZTZw6UKjVzAczkHzY
         cZvfyo6Qsf5da7PFjFClgHhkb59u01tgvj5Jrxpqg+0otm5yg2HNC2bTuJdXaWDwi/Yp
         DAig==
X-Gm-Message-State: AJIora+y7REJ0YZSIekDXo27aOg0Jogk3DQ9NtowVKueygc4/AvRKRT7
        PSwtSVvBLxVPQtovjSt/EMH+7Q==
X-Google-Smtp-Source: AGRyM1sjD3b2Y5FVVDn6IyRGSWQoF0T94yEIsX9CUrR1bx/kTIavKmIDJ7W4ZpEL2fXNccWDoCZiLw==
X-Received: by 2002:a63:2160:0:b0:3fc:b8ac:1976 with SMTP id s32-20020a632160000000b003fcb8ac1976mr1728159pgm.453.1655332635084;
        Wed, 15 Jun 2022 15:37:15 -0700 (PDT)
Received: from google.com ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id f8-20020a170902684800b00161478027f5sm90690pln.150.2022.06.15.15.37.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jun 2022 15:37:14 -0700 (PDT)
Date:   Wed, 15 Jun 2022 23:37:12 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: mfd: qcom,tcsr: Add qcom,tcsr-mdm9615
Message-ID: <YqpfGDl4Si9bHioa@google.com>
References: <20220607133443.182468-1-krzysztof.kozlowski@linaro.org>
 <20220607133443.182468-2-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220607133443.182468-2-krzysztof.kozlowski@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 07 Jun 2022, Krzysztof Kozlowski wrote:

> Document the (already used) TCSR on MDM9615.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
