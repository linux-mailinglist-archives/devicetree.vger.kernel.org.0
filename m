Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2AC4D5749CB
	for <lists+devicetree@lfdr.de>; Thu, 14 Jul 2022 11:57:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237261AbiGNJ5N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jul 2022 05:57:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237685AbiGNJ5J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jul 2022 05:57:09 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 856024D177
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 02:57:08 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id bp17so1950239lfb.3
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 02:57:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Cf1LF8Vab+dY7VJTWbcxgMq68LX/pXHt6XyBNLlSZ8U=;
        b=Zb+ZYytslFRk9Zr/NvbIJxzu/w3Exst/RffVqjj9MPRI7aDfMvWHir5kElHWKgSfta
         BeAZadh4Hi+EgjC7tJpiP5f0YQcN/aQH0mFjvb5J9ky6Ry9UlbfzQdcxzeDVZnYgMk0T
         g76ats43ESyYlnDN801CWNbSOYkFiEKTILXWMXBwIm3NtbWnxvEfAJYXyqaqTDi0Ly2a
         kNSwG6Gdf5eKorC80TGpmkAfFMBWEO60KwPTKsrMJn7lN1PGI6Fcalu52j3qLmsiDwg6
         Eg0YEt1ztoJoqbtVPWU0CubnBulP0H7MH/i3bQmYBMbpFbjM3ij/gYjaSRqtKRJxPyt3
         3ZGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Cf1LF8Vab+dY7VJTWbcxgMq68LX/pXHt6XyBNLlSZ8U=;
        b=WRM2DqefE+EjTZVXFM9SA+xJD4EbbT+CbO3VwyQQqoO6hqiEdPVHaDr0ipqGcDBzx/
         k5UKWU/OkrSdF9sjRnZ0dC/lPDbxir33B+c4LRaBFCMzks6sZLfme/KccGcD0qV5rche
         dR9MrYOTl0w1yr3RuhpHK+Q+RfP2+fvYJxr1PRje6VZvds7If0SvaJpry3t9S5mfuZvY
         kDMf+AecErgmI9CF+LW0andaGxI/KuuTcwu3/7h70qXeWke9SaK745P7/0nbuoi37aW8
         rsxSbQYFjddlOnuEPLitoAYyfs2r9NcO+/zDCMfNyfN41yvV4hFPq1F4cVsFZ4Focq3g
         yWnQ==
X-Gm-Message-State: AJIora/G0tRzghkjLWe2QxRhFVeHE+mghuXk4sUQm+hcJkbQLuhfJNyx
        ARcs2nwW+nQPfD1WZdONe+iMYw==
X-Google-Smtp-Source: AGRyM1v35gjXIcUm58O+nImSrhqGlswJBjf195y+1fpEpk1WmKtj68FJRzAPGkL6NpdoqEo5R28NDw==
X-Received: by 2002:a05:6512:261f:b0:480:fd2b:23c8 with SMTP id bt31-20020a056512261f00b00480fd2b23c8mr4867180lfb.434.1657792626898;
        Thu, 14 Jul 2022 02:57:06 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id p4-20020a2ea4c4000000b0025d6c8cfafcsm195766ljm.93.2022.07.14.02.57.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:57:06 -0700 (PDT)
Message-ID: <52aa5027-6cf0-34dc-8583-2623f08dcf19@linaro.org>
Date:   Thu, 14 Jul 2022 11:57:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 5/6] dt-bindings: remoteproc: qcom,q6v5-pil: Add MSM8909
Content-Language: en-US
To:     Stephan Gerhold <stephan.gerhold@kernkonzept.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sireesh Kodali <sireeshkodali1@gmail.com>,
        Luca Weiss <luca@z3ntu.xyz>,
        Stephan Gerhold <stephan@gerhold.net>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20220712124421.3129206-1-stephan.gerhold@kernkonzept.com>
 <20220712124421.3129206-6-stephan.gerhold@kernkonzept.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220712124421.3129206-6-stephan.gerhold@kernkonzept.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/07/2022 14:44, Stephan Gerhold wrote:
> Document the "qcom,msm8909-mss-pil" compatible for the modem remote
> processor on MSM8909. It is used pretty much exactly like the existing
> one for MSM8916.
> 
> Signed-off-by: Stephan Gerhold <stephan.gerhold@kernkonzept.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
