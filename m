Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 808AC780A41
	for <lists+devicetree@lfdr.de>; Fri, 18 Aug 2023 12:35:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1376473AbjHRKf1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Aug 2023 06:35:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1376537AbjHRKeh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Aug 2023 06:34:37 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 643EA4C3C
        for <devicetree@vger.kernel.org>; Fri, 18 Aug 2023 03:33:44 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-52713d2c606so950828a12.2
        for <devicetree@vger.kernel.org>; Fri, 18 Aug 2023 03:33:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692354822; x=1692959622;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V6EQXmWlbAP8xGzA5SqpcYw1xup/7LEAqhVr+3MCg0w=;
        b=GB07Z6G/G0+fjW+eJK9+aXtCaNKh1tmDFClnHoQGt90vR72x+qxWrZ+8LYKyIbiBlJ
         /FC/3aFNqETNRfIQqA/VEKo2HZyp8fh5QXSgehRZIrOiQy8dqJGjNPVDV3loRkPWc8WD
         yCVDlKK4anE56FymK6EesEs4UQ7cGpPbCOIfvS4UBmXCHrSA+DrHvNGOltGk/gxAQ44u
         mv8c3d5Io2cuNQV8Jht7D5q8lSALmsqzUykwckx7lsLnw3N0ICJQ3gqtkUezytwqaCka
         +c43beXWL3ZxH9ahcT2WflY6AIVBvpEEGrHgksDFRpeH1xOpNy7Mx8ewllDL3OSGo7/Q
         qB1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692354822; x=1692959622;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V6EQXmWlbAP8xGzA5SqpcYw1xup/7LEAqhVr+3MCg0w=;
        b=Aj7jvFgh4MfC98/3IJeME/+TaFuPK7Lx6SgPe7esMyt3LaDO3webuKAJk12MWYJ/HX
         oq+r/KdT3wqc2aNYwzcY/q2rtqcMivRHjj2/zUchyJg24gs4YfArxWXoVivCLoEuPXkE
         3c4A1EGg00zZvljkMAC641Xg3goIW/bVcpIrz9VkNPDI1Df1GuhMJIasV0/+3tHwxu8f
         SwyDeHDUetzrj96ha+iW9A56iPHzP437Exouiw1x4e+sZGLD/nPf0FOgPfZl+oO6ySKw
         bJEFNq4YqbM9zB5vlXE4c1pqLEdGHBwQSmG5puqMfWXNaanvCRniiQ6gqXluNGax71YA
         c+9A==
X-Gm-Message-State: AOJu0YwR2CHFHJmECsK92LrKO1c0cmE1oB3xJv7Rbh+m/6yO0KH/sznp
        Ivl1YHlL0l+1GzA793Q+Ah81DA==
X-Google-Smtp-Source: AGHT+IG63pVTdWE6Rqr+M8TcAltplCPu5q2+b9QCNW4PgQwhl1RSBnJMIcWD2yodknH0su3SWujtRw==
X-Received: by 2002:a17:907:60c7:b0:99c:440b:a46a with SMTP id hv7-20020a17090760c700b0099c440ba46amr1386439ejc.1.1692354821787;
        Fri, 18 Aug 2023 03:33:41 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id g17-20020a1709061c9100b0099b5a71b0bfsm1028327ejh.94.2023.08.18.03.33.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Aug 2023 03:33:41 -0700 (PDT)
Message-ID: <a3b74f31-905d-8b57-5e38-7f1efe37f554@linaro.org>
Date:   Fri, 18 Aug 2023 12:33:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v5 02/17] dt-bindings: gpu: Add Imagination Technologies
 PowerVR GPU
Content-Language: en-US
To:     Linus Walleij <linus.walleij@linaro.org>,
        Sarah Walker <sarah.walker@imgtec.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     dri-devel@lists.freedesktop.org, matthew.brost@intel.com,
        luben.tuikov@amd.com, tzimmermann@suse.de,
        linux-kernel@vger.kernel.org, mripard@kernel.org, afd@ti.com,
        boris.brezillon@collabora.com, dakr@redhat.com,
        donald.robson@imgtec.com, hns@goldelico.com,
        christian.koenig@amd.com, faith.ekstrand@collabora.com
References: <20230816082531.164695-1-sarah.walker@imgtec.com>
 <20230816082531.164695-3-sarah.walker@imgtec.com>
 <CACRpkda-XnS-DQE-5WXnTFdycwVnJwffhhR=V27gp8vnxkHTrA@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CACRpkda-XnS-DQE-5WXnTFdycwVnJwffhhR=V27gp8vnxkHTrA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/08/2023 11:36, Linus Walleij wrote:
> Hi Sarah,
> 
> thanks for your patch!
> 
> Patches adding device tree bindings need to be CC:ed to
> devicetree@vger.kernel.org
> and the DT binding maintainers, I have added it for now.
> 

This won't help, I think. Patch will not be tested.

I was already asking for using get_maintainers in the past... sigh...

Best regards,
Krzysztof

