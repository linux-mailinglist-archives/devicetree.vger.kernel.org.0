Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3FD4960F985
	for <lists+devicetree@lfdr.de>; Thu, 27 Oct 2022 15:44:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236284AbiJ0Nox (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Oct 2022 09:44:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235729AbiJ0Nor (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Oct 2022 09:44:47 -0400
Received: from mail-qt1-x832.google.com (mail-qt1-x832.google.com [IPv6:2607:f8b0:4864:20::832])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C05F175B6
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 06:44:44 -0700 (PDT)
Received: by mail-qt1-x832.google.com with SMTP id bb5so1089134qtb.11
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 06:44:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JKn/+G/EIfphW6J6w40w7kIidY+JmH4foL41VvXvhK0=;
        b=tnCH2v5+9qm1A/Cge35QGKmFbHAPyktM8IUJtXzPD3Ih9NPf9gVw2VtvlhEY5cSvYj
         FvrZzJyknTReO0yM4nZdOCLvdl1urCFYxFHwurKdfMzt/u897Yp/T1YzmfbNhOudVMzp
         EWIk0Yp+KguTlbjxA+i7xzLXIkC0VA2ErCOgb5SQVjQxNxiwp2kK0EWQSH2gISqBVhPX
         Pqpy3Qt2Ff9frcmuZu19q03y2Esoi9CZHlPmIOuDGWRw11OWGxqc/MBltOnIE1nJ5QGW
         mg/Y4q1vTpzvW90r0FdOblFxiUVqtDYK8TAsnjUpy/uUkJR/H9a2MLSCA1C+fiy77MAP
         c96A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JKn/+G/EIfphW6J6w40w7kIidY+JmH4foL41VvXvhK0=;
        b=1DJLxCePKb1DnVVbTxQ5mZbARz9rkhk3vUBIBBIgVQvcZa7+xwA/5xVSfa+S7wW/HI
         yGfs8QUdzQt2KFh0nBbyukWQ65mt9xs09Outr+c6quPBA7r+i/HEnSWVuDPMqJA57tcI
         IXIfc3ubJRnrOFDXrEJbOWbdT2aGuBO6Ym+WTUyPkamFhHEEaXyK4oReiBBAABk4sjO3
         LuIYvtP2x8TFF+ERez2eykUzLLLAtwySU7Yz4Kjax02U8zThzomc9FZe1qdniaWw1iKB
         ZuQ1inDD32arAUoo1MI/QPX3DnyAJlbOQWGLXY0SDh3gTWEe5+Nngcux6MEA7EeCGLRd
         tkEQ==
X-Gm-Message-State: ACrzQf3g2nFeQ0XUVzUZID8nIOKTjYoUXlBo6ZPI4mEjLCObgIAk/126
        duviy+5ZWGm/Kd9JSZJY8/Uo0aZxdgsRCA==
X-Google-Smtp-Source: AMsMyM4ZGvH92zP1xpXJwpP7nqOtHt9bZ0w2io2q013LPhHPHRoQaGlJDTw0GRDEhVrcXVWMkJn/sA==
X-Received: by 2002:a05:622a:620a:b0:35c:bf9e:8748 with SMTP id hj10-20020a05622a620a00b0035cbf9e8748mr41479832qtb.494.1666878283534;
        Thu, 27 Oct 2022 06:44:43 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id br40-20020a05620a462800b006ec9f5e3396sm986099qkb.72.2022.10.27.06.44.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 06:44:42 -0700 (PDT)
Message-ID: <63679d37-8b9d-db52-0f73-5bfd031c353e@linaro.org>
Date:   Thu, 27 Oct 2022 09:44:41 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 6/6] ASoC: dt-bindings: wcd938x: fix codec reset line
 polarity in example
Content-Language: en-US
To:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Mark Brown <broonie@kernel.org>
Cc:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Banajit Goswami <bgoswami@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221027074652.1044235-1-dmitry.torokhov@gmail.com>
 <20221027074652.1044235-6-dmitry.torokhov@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221027074652.1044235-6-dmitry.torokhov@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/10/2022 03:46, Dmitry Torokhov wrote:
> The driver for the codec, when resetting the chip, first drives the line
> low, and then high. This means that the line is active low. Change the
> annotation in the example DTS accordingly.
> 
> Signed-off-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

