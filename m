Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC7C573D013
	for <lists+devicetree@lfdr.de>; Sun, 25 Jun 2023 12:17:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231199AbjFYKRm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 25 Jun 2023 06:17:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230516AbjFYKRk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 25 Jun 2023 06:17:40 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66A0BE42
        for <devicetree@vger.kernel.org>; Sun, 25 Jun 2023 03:17:38 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-51d9123a8abso761752a12.2
        for <devicetree@vger.kernel.org>; Sun, 25 Jun 2023 03:17:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687688257; x=1690280257;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oDxSibctoUXEH8FbhaW344l8fagqf+fw0uwilWaxAWw=;
        b=tz7Kt4Yc8ENCU95r/WVdJnYhWhiuAK8cY97qf2dl2pKKH9rC2MBRBZm2ewM/MCYLuN
         e9ET4YzOaMmrH+CtFmzX8i9sg7NvdHC6WfMZBFsL+Iisom5d4BGUytjPRCzDoyA4OHiC
         Y4rzPnjoYrSmM8oreWsPXTQI/iRlbNW3Mhs2aDP7m/Lzz0+7e5y3fmC7uwgY5Ym2qrBg
         bRzJWN9YY00V/OM7HJWzDpIdLwEdjXkCvDAtByA4clCUhUy6xvvEjW7csf/jmUrlU9Z9
         s+lH7+cDX6PB0bJrAx//0QpciBa4oqyy3GvwNgfyD08jFS8G+JztwVyL/qSy+epv9LAY
         0OAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687688257; x=1690280257;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oDxSibctoUXEH8FbhaW344l8fagqf+fw0uwilWaxAWw=;
        b=mHS8j9myPtG21VVLXbrkUUab0pV8LSLkb9s1F/3Oq0fRMbGENWuebNByFlEs4mS4bb
         mgNHaFatHFXnkjb2BBeSG/x4uoEE2O5gRhZNQAl9O6dbeVf/qt38X0yfPMcjlMpg1g42
         lMmvfQ3I2WJ+rPMf6Jsi1UOx2NCypd3ev7FQyka31TWMVxAPovf61vlS+YSulKKtNtno
         OJd0fId1S3TPNJZe4b2etHw2LdBdoPaaENMY7wqHBpJP8Ha8VnpwFYtcNtPaSW5tzfAr
         evqR6Kr34qS13w/GZsMT7Dq320tcwQ2lbRjcpQvMkqIT9vzhpzv4p6+avjYgB+AsZ/f5
         EdbQ==
X-Gm-Message-State: AC+VfDwdMDBG0RGgPFDICt04AF7A7jW5H2YbNVu/41WgQu4a4NDdujFH
        A1cSSoiSKsilf27t/Wzy9XTyyQ==
X-Google-Smtp-Source: ACHHUZ4LXduPHHt4DY5Lepb/cVmP4JxhlW6ONoMHpdxwOAmHFauWhKUSGJR7XfTA7B3mPHoSEflrIQ==
X-Received: by 2002:a17:906:4793:b0:974:32e:7de9 with SMTP id cw19-20020a170906479300b00974032e7de9mr23972957ejc.56.1687688256703;
        Sun, 25 Jun 2023 03:17:36 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id br7-20020a170906d14700b009893b06e9e3sm1922040ejb.225.2023.06.25.03.17.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Jun 2023 03:17:36 -0700 (PDT)
Message-ID: <d990a281-b4a3-1e26-1fdf-dfd35ab9cd24@linaro.org>
Date:   Sun, 25 Jun 2023 12:17:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 4/4] dt-bindings: serial: fsl-lpuart: add imx8ulp
 compatible string
Content-Language: en-US
To:     Sherry Sun <sherry.sun@nxp.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
        shenwei.wang@nxp.com, gregkh@linuxfoundation.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        kernel@pengutronix.de, linux-serial@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-imx@nxp.com
References: <20230625094857.29644-1-sherry.sun@nxp.com>
 <20230625094857.29644-5-sherry.sun@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230625094857.29644-5-sherry.sun@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/06/2023 11:48, Sherry Sun wrote:
> LPUART driver adds a new compatible string for imx8ulp, and imx93 is

What driver adds or not, is not really correct argument for
compatibility. There are plenty of compatible devices which have both
device ID entries in the driver. Why would you drop their compatibility
between each other? It does not work like that... Provide clear
rationale for this.

> much more compatible with imx8ulp than imx7ulp, so correct the
> dt-binding here.
> 

"Much more compatible" is too vague.


Best regards,
Krzysztof

