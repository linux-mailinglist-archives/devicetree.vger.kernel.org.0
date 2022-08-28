Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 372155A3E3E
	for <lists+devicetree@lfdr.de>; Sun, 28 Aug 2022 17:13:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229912AbiH1PNB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 28 Aug 2022 11:13:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229874AbiH1PM7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 28 Aug 2022 11:12:59 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3227F32BB6
        for <devicetree@vger.kernel.org>; Sun, 28 Aug 2022 08:12:57 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id p5so4935271lfc.6
        for <devicetree@vger.kernel.org>; Sun, 28 Aug 2022 08:12:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=OtM7iPNjdY/5wZ1fS/xdrs+Yl/HaQkufjAk9Dk8g/F4=;
        b=ZM9+t75/Iyhz/lVJ4dOs+/qO7x3tO4hFdfVYKfJAKuZtKyO0dYezs2g8vYXYLIPrgv
         0THHHcwNDPJR/dGl7hpzW5jhbj7wa7lJHZvMgEFaHe1pqdTYPUEttNy2XsAXrIJL3B6s
         OfljqMOZhjzRj2nRTGyB2cE/4MPxAesLsxCsMU8my4rlUdYwfsgzSeWjKyHHIncaTeTK
         36DijBVMrf13XmSw/tz6YXINirzTxABTTunVY1jBpbTFOF5uTeJRmL3HZUnnhcL7wMD7
         qetrttlyczmEIVMiPk229AcL65+w8/VHzxIUhMskDFqjvUHT7VOY9HsIrPNcK3utCzYQ
         xe5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=OtM7iPNjdY/5wZ1fS/xdrs+Yl/HaQkufjAk9Dk8g/F4=;
        b=lO6FVo2Wp7kgbTPfqobnxw1ew9cXTyL/CkNp4lEt/w0f2gCWpvYGy9DUOPJwWEnDzs
         U5sBG3N4tfkjBatYTxgdoHNemv0Dya4TfnjDwl+DToTk2kYps2V8f0c1c0stDBuEmyT/
         O1TigHLFDrSPHZRccFOgggyztW9raBTjAnWOCD4W57jEnK4AkJxzi2L7wKhpedqVTbfJ
         C/Ff0gBpXrSVOf4FTcSA0HInNsiT1K8xCZYqwlnP/nOMg4A74d99jdfKXAlp3JYmiSeP
         GlmV18Y1LNc6EbF48J3pTVYE17z08LLTkRXxL9M0n/q2CBg5Sd6DtDbmxAwQSPeBJccX
         UPvA==
X-Gm-Message-State: ACgBeo2jD9yMYJ4jgnOueLi/XdbvtPyRoieOvtiRYVEvskrt29wXDw8u
        zq+2fpoUfBLZn/wABZVgL8D1iA==
X-Google-Smtp-Source: AA6agR5BQ9SYbGpzS3uLENZcMMQo2IUbuXQi9Ks69vuUcUBcnzw3LTesdRgczeXwLvS6raLMb76axw==
X-Received: by 2002:a05:6512:1583:b0:492:c028:d2f3 with SMTP id bp3-20020a056512158300b00492c028d2f3mr5750535lfb.216.1661699575603;
        Sun, 28 Aug 2022 08:12:55 -0700 (PDT)
Received: from [192.168.0.71] (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id c9-20020a2e9d89000000b002655fb689a6sm78562ljj.139.2022.08.28.08.12.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Aug 2022 08:12:55 -0700 (PDT)
Message-ID: <cf49e23e-69f8-e8e7-056a-2b3c281ff214@linaro.org>
Date:   Sun, 28 Aug 2022 18:12:53 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 07/11] dt-bindings: PCI: qcom-ep: Make PERST separation
 optional
Content-Language: en-US
To:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        lpieralisi@kernel.org, robh@kernel.org, andersson@kernel.org
Cc:     kw@linux.com, bhelgaas@google.com, linux-pci@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        konrad.dybcio@somainline.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        dmitry.baryshkov@linaro.org
References: <20220826181923.251564-1-manivannan.sadhasivam@linaro.org>
 <20220826181923.251564-8-manivannan.sadhasivam@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220826181923.251564-8-manivannan.sadhasivam@linaro.org>
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

On 26/08/2022 21:19, Manivannan Sadhasivam wrote:
> PERST separation is an optional debug feature used to collect the crash
> dump from the PCIe endpoint devices by the PCIe host when the endpoint
> crashes. This feature keeps the PCIe link up by separating the PCIe IP
> block from the SoC reset logic.
> 
> So remove the corresponding property "qcom,perst-regs" from the required
> properties list.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
