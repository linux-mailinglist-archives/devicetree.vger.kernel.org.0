Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 53D7A525E46
	for <lists+devicetree@lfdr.de>; Fri, 13 May 2022 11:19:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1378657AbiEMJMJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 May 2022 05:12:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231563AbiEMJMJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 May 2022 05:12:09 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF2123D4AD
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 02:12:07 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id q23so10567633wra.1
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 02:12:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=FgorTPbnFvVixyR8EXfPPsDvCseGItjIY4UCOJ+wbp8=;
        b=os8I3KHn5Lu7+abAV1auwe2u9XMcOJElEI12ti+iHbGswucuLcHhRoY3UB+gEYtS9C
         zwREa+Fa0CzA/sSSDTxBHU1x/i+BLMHjolY9XfHp+WYn/hRgdn+gBBX7X/vftjNxeV5s
         txWsCT6ORZm9Ly8xfbWn8SGPlrAlFlZNiOelarOqArD/LOzXqRPC7I55srgkwIacwPCL
         YO9NnPFbYmXtomkuUIzZNNQAJ3BZ7HJjBw5BAvz5lBDWiYoMfYc7gcIMmRnbeOE6/Cm+
         m/Bqqaq7GxMQkIOKlynmX+uRMyFSW52jawwkw0CrVeEGKR4yl7B1KzANfVrh/kzz9Si5
         90Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=FgorTPbnFvVixyR8EXfPPsDvCseGItjIY4UCOJ+wbp8=;
        b=2b0R6qEL8wekXZpk4ZQwQ68amcpgGq1jyr037GNN17ByfOEkgM7x8oLUEdX4LyppbW
         XzYIY63KFuwJlU+QSVcF6QgZ3cGY5Uh98sM8oIT2PeksAuo/Lx0/8ifYqd+GmxesfTx1
         J4t5xsyk29v2XUQhZTz/SRq/5945AYMhpc0++543kSdzZGEekd+2Id1kYJ02Z24ky+/X
         fL2u0023n2VW+tf6d+Cg1BdIhKGqRd93mnTdWgz61aZyhccvRkmVG7MwwQ8gYQQF6mwG
         agqvRqRzT1DjR7NAbBd47WiVMO7qmpotzZzp41ly5qNgoWa7pupbF0QKn27vxYViVkaj
         /TGA==
X-Gm-Message-State: AOAM532nOW24fUqICbDzR9zIT4oBm+b72NlXIAyVnVK4Py4zJboHh9Uu
        N+5JfcWXRZllXNXQI0gYk+FRCA==
X-Google-Smtp-Source: ABdhPJyW9FzscuEPUGlS7ChUMHGjRxjtug2/EnQzJ/+FjnbBd7cqELKWMnSCuHntRMfk6p2pp72A7g==
X-Received: by 2002:a05:6000:1d98:b0:20c:c29d:76db with SMTP id bk24-20020a0560001d9800b0020cc29d76dbmr3107683wrb.710.1652433126624;
        Fri, 13 May 2022 02:12:06 -0700 (PDT)
Received: from [192.168.0.169] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id z23-20020a1c4c17000000b0039456fb80b3sm4711757wmf.43.2022.05.13.02.12.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 May 2022 02:12:06 -0700 (PDT)
Message-ID: <dc1e8f4e-08d5-09a9-95ee-c292a61561b9@linaro.org>
Date:   Fri, 13 May 2022 11:12:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v7 1/3] dt-bindings: marvell: Document the AC5/AC5X
 compatibles
Content-Language: en-US
To:     Chris Packham <chris.packham@alliedtelesis.co.nz>,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        catalin.marinas@arm.com, will@kernel.org, andrew@lunn.ch,
        gregory.clement@bootlin.com, sebastian.hesselbarth@gmail.com,
        kostap@marvell.com, robert.marko@sartura.hr,
        vadym.kochan@plvision.eu
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20220512042501.3339775-1-chris.packham@alliedtelesis.co.nz>
 <20220512042501.3339775-2-chris.packham@alliedtelesis.co.nz>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220512042501.3339775-2-chris.packham@alliedtelesis.co.nz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/05/2022 06:24, Chris Packham wrote:
> Describe the compatible properties for the Marvell Alleycat5/5X switches
> with integrated CPUs.
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
