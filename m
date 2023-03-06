Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A3D8D6AB6F5
	for <lists+devicetree@lfdr.de>; Mon,  6 Mar 2023 08:24:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229539AbjCFHYY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Mar 2023 02:24:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229558AbjCFHYX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Mar 2023 02:24:23 -0500
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BDB71EBE2
        for <devicetree@vger.kernel.org>; Sun,  5 Mar 2023 23:24:21 -0800 (PST)
Received: by mail-ed1-x52f.google.com with SMTP id s11so34450768edy.8
        for <devicetree@vger.kernel.org>; Sun, 05 Mar 2023 23:24:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678087460;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=r3bQ4k2PvMngf9Eau2r8xaRdUgTYQ5lSW/kSlMDUom0=;
        b=RVHBz1olKRHM9CecnH51ezfBz0TAbN2v/Y+Jbn0xMyymyU8EcXQDVoHuu1VBKISYbm
         7C65P7hQabNIH7uKiPmfDiCP6zlK2FYb3RjYCjB5BXpPe84NwtcfUFicpWuqfo0o+gJL
         nmn2NXx6UotZOVZct62/2gSu54kl5w1TiF2d9uHp+9w/iZN2A2Wgr6cHExQZT3cJ9yGZ
         7SXoRX8i/MIrtAtTlGHBDU9fTXqoOusKBnlSIuRI4yh86/sD5RMpygJW5XCCr1TqdW0V
         chQzeTapnwWBxdTg5kpeZOmkOojUysr0KpoA2QobV7GvKpekWJEiEsWTPXiSuWMO93CP
         p3Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678087460;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=r3bQ4k2PvMngf9Eau2r8xaRdUgTYQ5lSW/kSlMDUom0=;
        b=W10Qyy4Qqm/ea4pvuvTkBpopjY/ZzD+h4fNLX1CAfQPHaCXDQVT+qFEcnOVJyCojQr
         djxKkjBgli7pTrLhUr79VzF+J1bSE/aHTlp5PTFg8H2NmR8MwdLQyijSHc5RPfFRhxXE
         Kf4Jjrqehtl3uHwYjleSpbNwmT3rmMfNcIB2uUw6KW3q1AD27OYtvApX/3CAOzm6vNTt
         c0dmFrhacAIC4Y3N6Nm3j87BQXIaMebbdA3y9/NCAe7+MojpjEvHRonJBJg5mrkSzGU0
         JY6STEf5tGtna+kAIwYkQLH+b2WmwRD6Tux2x8/4gSTewWOcHOuPZuWXpsxLY5JH7Ryf
         pYNA==
X-Gm-Message-State: AO0yUKXmBvg/kHlkFbzfc5gPbX/piYVo/6Mu/M4EutyImmt9neBmh5tI
        4yd1pn/YijQ+KfvwuLSpPlwMPw==
X-Google-Smtp-Source: AK7set+IhaidXT2y96C0YWRplmrJ2nTzw3MTMT3w0/n/D0HHJ2ViWvdT+gToydQTCuXU2iPTW4/CRQ==
X-Received: by 2002:a17:906:fe41:b0:8f1:949f:37b5 with SMTP id wz1-20020a170906fe4100b008f1949f37b5mr12317038ejb.32.1678087459966;
        Sun, 05 Mar 2023 23:24:19 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:d85d:5a4b:9830:fcfe? ([2a02:810d:15c0:828:d85d:5a4b:9830:fcfe])
        by smtp.gmail.com with ESMTPSA id h9-20020a1709060f4900b008d2683e24c4sm4198751ejj.69.2023.03.05.23.24.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Mar 2023 23:24:19 -0800 (PST)
Message-ID: <eba45618-8e0f-6b7d-6ab9-329f481138b6@linaro.org>
Date:   Mon, 6 Mar 2023 08:24:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 2/6] dt-bindings: PCI: qcom: Add SDX65 SoC
Content-Language: en-US
To:     Rohit Agarwal <quic_rohiagar@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org, lee@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        mani@kernel.org, lpieralisi@kernel.org, kw@linux.com,
        bhelgaas@google.com, manivannan.sadhasivam@linaro.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <1678080302-29691-1-git-send-email-quic_rohiagar@quicinc.com>
 <1678080302-29691-3-git-send-email-quic_rohiagar@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1678080302-29691-3-git-send-email-quic_rohiagar@quicinc.com>
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

On 06/03/2023 06:24, Rohit Agarwal wrote:
> Add PCIe EP compatible string for SDX65 SoC.
> 
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

