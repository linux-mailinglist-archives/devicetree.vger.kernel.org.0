Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D65557135E
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 09:46:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232060AbiGLHqQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 03:46:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232318AbiGLHqO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 03:46:14 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F15199C251
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 00:46:09 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id t25so12555316lfg.7
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 00:46:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=K+qrrxi4dkURwN7nWkg2ioROd7vEK8RUbZ8lLUmbysg=;
        b=jD5Z8VOVRj2JXep1DExsbhzTSXczYIuc0MUciIJ6SJapv+g+WfnBLdoTgkBa2yRFFf
         GnmDPQhUfTLvwzZxK+O8QBdB7bZ5N6VyGT498WhH7Be0NoUuCF2hHlM6Q4B51CcfeaIO
         iQrZb4WvroGCWDLpLuB+MIol/hxhgvYkzIP03QM/nyQNhwJxwn0a6oRqsJq9haIIR7Q+
         qj1bExzhDmibpHS2NhAy8/XqCg6Zn7s8FrvoT1Gh2Af1VLBACSbsKcDPFkPzAZgrCVW4
         p7z1nkzw5w2cHGvSv1T5BIIMDkeAAU2e19vfLJDGUYFxZniaZMQnnGzE3pw2sfv3lgLB
         kcaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=K+qrrxi4dkURwN7nWkg2ioROd7vEK8RUbZ8lLUmbysg=;
        b=qz7YQqem8K0mPnt4OBubjyj65x12nfCdllh1RN2UQK9wYKp0De5Aif4QPMBSow6gNY
         Bv+Dau0iEWJXIKdfQzGyZbaALdQzpdlfKFe44I9yeMEN/iPwE0LQWkkb/DoBLmEHtBEk
         nrZMrVL1DlbSxHgcPfiR8lV9FAExC9Xlp2iPnHuPz55YfPBJj6kSZBrORkXtFom7St5O
         uSzitO4qvGYjrir1OAHNAB9sAq3wErWuIAOF03TFxZtgAFEjOAksMN062FwLaqxAbzVD
         Q7njflaNzGrjs/3tRmrUBiKgCniuQaRAgjkWOzg75vdriBdAPpheuYaiH2YRQCBS8enO
         xz8Q==
X-Gm-Message-State: AJIora80hYCepmvYfV36PY8//Vy91ge+oOz+UqKS3qVFaTDA26I0hknV
        xJn+e3wOQUxkg5aR33YV2ZmIZQ==
X-Google-Smtp-Source: AGRyM1v8ThQlONj2IPNP3GVCkFsL3an3UWD4qkCdF3xhLCUexDpV2s8MI3+PSLUYlD0BGgMEMkHMgA==
X-Received: by 2002:ac2:483a:0:b0:489:c606:4711 with SMTP id 26-20020ac2483a000000b00489c6064711mr12099923lft.288.1657611968367;
        Tue, 12 Jul 2022 00:46:08 -0700 (PDT)
Received: from [10.0.0.8] (fwa5cab-55.bb.online.no. [88.92.171.55])
        by smtp.gmail.com with ESMTPSA id m2-20020a05651202e200b0047255d211b2sm2022523lfq.225.2022.07.12.00.46.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jul 2022 00:46:07 -0700 (PDT)
Message-ID: <8e2e3867-96bc-df45-0319-d544e8b726f3@linaro.org>
Date:   Tue, 12 Jul 2022 09:46:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [RFC PATCH 2/3] dt-bindings: arm64: bcm4908: remove binding
 document
Content-Language: en-US
To:     William Zhang <william.zhang@broadcom.com>,
        Linux ARM List <linux-arm-kernel@lists.infradead.org>
Cc:     kursad.oney@broadcom.com, anand.gore@broadcom.com,
        dan.beygelman@broadcom.com, f.fainelli@gmail.com,
        Broadcom Kernel List <bcm-kernel-feedback-list@broadcom.com>,
        joel.peshkin@broadcom.com,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220712021144.7068-1-william.zhang@broadcom.com>
 <20220712021144.7068-3-william.zhang@broadcom.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220712021144.7068-3-william.zhang@broadcom.com>
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

On 12/07/2022 04:11, William Zhang wrote:
> bcm4908 binding document are now merged into bcmbca.
> 
> Signed-off-by: William Zhang <william.zhang@broadcom.com>

This must be squashed with previous one.

Best regards,
Krzysztof
