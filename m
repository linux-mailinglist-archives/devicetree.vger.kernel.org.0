Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E525D58C4BB
	for <lists+devicetree@lfdr.de>; Mon,  8 Aug 2022 10:11:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242066AbiHHILX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Aug 2022 04:11:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242052AbiHHILU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Aug 2022 04:11:20 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4C4911A3F
        for <devicetree@vger.kernel.org>; Mon,  8 Aug 2022 01:11:19 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id e15so11626954lfs.0
        for <devicetree@vger.kernel.org>; Mon, 08 Aug 2022 01:11:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=LHJDhYsv/Rim92S/FLUstvQVcHoVL1DwvCgvhFMIJQU=;
        b=Po+JD5H4qJluYvs2Tmlpq493Ucl5fpb4S8tltzUbKWLlzYnEiaXX5qVYmZrJYq4qjD
         EFGzPhrOizK2t9B4lE9hPGZXAG8w8DxJUiqgrkS8wEvW7gNVO7zjJvYt7sllloSty+e6
         uCbMv3FYmM4UoQlXhmfF8EiREzHEni/+4tMnTfmDES7ESdgczr0MUj8WFCPUswV+p+H5
         bFRsveOIOjy48Za84wbo7tw7m4HxyTwrE0bVB2zpG8eUWoMAlfh/cNVyg/wwarGr+hUI
         7tge4rfDNlnah0y2s+4lxyeNK9stb/QwK7wcdr8swDlABzFGv17uDiGPdoQUpn3qI/IS
         YvOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=LHJDhYsv/Rim92S/FLUstvQVcHoVL1DwvCgvhFMIJQU=;
        b=6jVfJk1BHd5UoDKDbkULUaFVC62se3WdGUR6bIDUp4onq0KpJemh70jJJamoKKWQWJ
         FSgwmj1RcdCdG5d2onnZo6wel4W47+9dlrjG1auK4lsGtwBqDYMDrPntCm+RRIuA0/B6
         Ipn4iIjrTcdlK9tZ8OaZld/w27mOy9WUf4m/pbSln1XpDY4D4rrQcv+KVQG/fteARdSx
         vMc8/z79n0ltkqvL5pXlSjDe9yP/ttJRWfSo/Og0gHlUENCuhhwz26OT9WlsajL/G80Q
         0/e20taTH581N6XyyuGluEf/u0tsfYjifLSnavdBoUqnAJgySPFvLY7mC+TSTxQzf3xW
         J/Dg==
X-Gm-Message-State: ACgBeo0Wiz1DID8hpyzKCxJBKBJsDgW0vBjPyErGzH4DNgskn7FyyoM8
        GKWygbEbprXxZ8en2qRwZDk/pw==
X-Google-Smtp-Source: AA6agR5xjV4h1UPMDBLzbNYDD1moY7ObuTURyWbiZuieFApJ57aRZHApeXAgEKvYt+fNNLR2yhJf2Q==
X-Received: by 2002:a05:6512:32c5:b0:48b:fa9f:a98f with SMTP id f5-20020a05651232c500b0048bfa9fa98fmr2334042lfg.335.1659946278217;
        Mon, 08 Aug 2022 01:11:18 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id k3-20020a2eb743000000b0025e48907929sm1293653ljo.23.2022.08.08.01.11.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Aug 2022 01:11:17 -0700 (PDT)
Message-ID: <da83671e-08b9-2d68-e5d3-d9b09c105bb4@linaro.org>
Date:   Mon, 8 Aug 2022 11:11:16 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v3] dt-binding: ipmi: add fallback to npcm845 compatible
Content-Language: en-US
To:     Tomer Maimon <tmaimon77@gmail.com>, avifishman70@gmail.com,
        tali.perry1@gmail.com, joel@jms.id.au, venture@google.com,
        yuenn@google.com, benjaminfair@google.com, jic23@kernel.org,
        minyard@acm.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     openbmc@lists.ozlabs.org, openipmi-developer@lists.sourceforge.net,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20220808075452.115907-1-tmaimon77@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220808075452.115907-1-tmaimon77@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/08/2022 09:54, Tomer Maimon wrote:
> Add to npcm845 KCS compatible string a fallback to npcm750 KCS compatible
> string becuase NPCM845 and NPCM750 BMCs are using identical KCS modules.
> 
> Fixes: 84261749e58a ("dt-bindings: ipmi: Add npcm845 compatible")
> Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
