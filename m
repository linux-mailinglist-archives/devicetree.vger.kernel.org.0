Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 25FB8543097
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 14:39:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239369AbiFHMiD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jun 2022 08:38:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239345AbiFHMiC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jun 2022 08:38:02 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4757425EAC
        for <devicetree@vger.kernel.org>; Wed,  8 Jun 2022 05:37:58 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id gl15so27332860ejb.4
        for <devicetree@vger.kernel.org>; Wed, 08 Jun 2022 05:37:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=NHIetuJMCCtxZ99NkRHS0VtGi8XQFFhwLSYL0Z9zvSg=;
        b=XxfX5E6ZIq2gg6arJxbd1VWHNHNd8ze3UjlEriuPNrOGHnYCMI7mah53xfcVh/aSdg
         7GIAQ4LI2gGc73+XLyIiv0n64nTwuGbgCLsYJylmxNDVAoOsBdgSRJPsjxms4wbv4A4/
         Iyx111eTK9xZBykGyFKpj/gc8kVV2FEhq9T0r2gmeIUHzkisSapdLi4cAiNl1f7L0ArE
         A37xUGJmxX6yhEKaZ8o7HZe5fbdNAldU9F7RrdUX/NPPlUItlCszUk4ZbeuWH0ZVa8SH
         iHrjM4Jb91fb2BKRbsoIknZb1lIptQTJFZowbZUZOmw1HWFUdxognHXvYLe8z9zkrsyF
         NiQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=NHIetuJMCCtxZ99NkRHS0VtGi8XQFFhwLSYL0Z9zvSg=;
        b=GUQBBHdCWVxDlz2m39OLrixEHgHeLC2Uipq0oX+zElsLUtU3WTbLLFu11Dy27Ntt0y
         YGrT+2KmY9ZbHKbl/VuhpowWoMFDPlGya7gxgDcR/BZVZKvapspiXlvbq9Zl7sWHmUmh
         fp8uDB2BzqJ5rRcaAm1uLza0tyX4WzXOHmwPrwlOSp/+8L1MfuSH9RZ+6JdGT7EPdtiZ
         gI25p5+wfh97PayGvDl5oiSGm1s01h5fSEV4ACsOFyDbNpxNBWA13iAm0mxtXziQJqcX
         fuYAfnjrBa81epkJGqhKV1a/ihBap0HiaRvOCzGToQd3z/r9P86XtnjdBNt4JyZZt7M9
         NV8Q==
X-Gm-Message-State: AOAM530SWIJne6WFBXnspquR40kwJ/glvHB5aKVbpUQoQIXhFMADlGA2
        f162ihQC9vIG0AcBKK5cmRXUYw==
X-Google-Smtp-Source: ABdhPJw9TCJr3FEiqfRvqPTVN3ZNekIiUPP4dDLMm5LkpOs1Bj7RM6hndPutXi1h9Rha1wG0AAaRDg==
X-Received: by 2002:a17:907:1628:b0:711:e3fe:50a9 with SMTP id hb40-20020a170907162800b00711e3fe50a9mr6738850ejc.746.1654691876853;
        Wed, 08 Jun 2022 05:37:56 -0700 (PDT)
Received: from [192.168.0.192] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id u15-20020a05640207cf00b0042dd60352d1sm12304001edy.35.2022.06.08.05.37.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jun 2022 05:37:56 -0700 (PDT)
Message-ID: <1abaa0ae-1080-1f78-70a8-6d263ded94cd@linaro.org>
Date:   Wed, 8 Jun 2022 14:37:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 02/12] dt-bindings: display/msm: hdmi: mark old GPIO
 properties as deprecated
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
References: <20220608120723.2987843-1-dmitry.baryshkov@linaro.org>
 <20220608120723.2987843-3-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220608120723.2987843-3-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/06/2022 14:07, Dmitry Baryshkov wrote:
> Mark obsolete GPIO properties as deprecated. They are not used by
> existing device trees. While we are at it, also drop them from the
> schema example.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
