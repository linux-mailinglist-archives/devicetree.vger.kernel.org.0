Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8669D7684CB
	for <lists+devicetree@lfdr.de>; Sun, 30 Jul 2023 12:13:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229615AbjG3KN0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Jul 2023 06:13:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229917AbjG3KNZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Jul 2023 06:13:25 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1EB7E4A
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 03:13:22 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-52256241c66so7409266a12.1
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 03:13:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690712001; x=1691316801;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mUIpalybnyNZGM7m37yQpOMZS097BrfIytGo6aYsQJk=;
        b=TARhLjvjexOmPMBQ2eWGFYVDYxr20CqJxGLHdw8WuUi6qh2HFY1Xr3MvWfOyVaVC1u
         bu4jZtQWs9JceDRXmwABMqFVBMz1wLeC68Pp+pb+BvE3Qtm9FRL3Y4dInRuN7bEnTsV2
         kmX6IEjEL3MD8iG3Aw7W+hRNwmx0kusl7+sWpFpiZniwlr4mln7exmMKgaEY0mEP6hNf
         W8+hv5UfVTtdivQ2bsYrb1KNKsmnZmpg02+uy5lVRVSTTS+fbeyQtUTkqYcIkkZw2nNe
         0Z+q2fWix+X9PSUBuu2J5dX2XEixXTtKNRwp4hfvvkmUByB//4PddiArKBeEOfT/pXvV
         c04Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690712001; x=1691316801;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mUIpalybnyNZGM7m37yQpOMZS097BrfIytGo6aYsQJk=;
        b=IEHK5GhoivSSBYnuc2FRwF7v2KfwK/ez3Q9GfuI6TLzQiYlHWFgLg8nkXkPPy+HgYb
         V8eHRyLBJTTKPgj5Pfx4+ObfMITmNqms2rfboX6rK/bXucdfaZkDu9ikITvdvuE14V9J
         MlfWtf0JdpbqUCwcrlmH/wKbPGHBMVYndivLs8EyODKAM2SURqKkprD0/FFoYePb0d3/
         2qNC4OxNBnWYKtWmp/35Jh1QQWl+Uc1q5AJWh++gH/lsv3VW8217YYVIXALVRN1gkYoi
         x3ynyFOmRnYTCiZxWqHXOVRVufAV5pNIPtFEbsnpgR9KjXaozNtT7TqIrAzSU9sSnh97
         Hv5w==
X-Gm-Message-State: ABy/qLY0/anmmErzWlcYbCaVdDGqmftEIUtE5ZiFLj5ilaJ6rdcITaID
        pc3Skk49t3DYVfWqI8sNI7IZ2A==
X-Google-Smtp-Source: APBJJlFZ3wYP/rI7D5Oz71dJDhBVM2ZfhYomsADL9hmNt8xm8/qpGkVdVghkrJnOoXreZb2+tyE9Bg==
X-Received: by 2002:a05:6402:3508:b0:51d:cf7b:c9f0 with SMTP id b8-20020a056402350800b0051dcf7bc9f0mr11812010edd.12.1690712001238;
        Sun, 30 Jul 2023 03:13:21 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.183])
        by smtp.gmail.com with ESMTPSA id p17-20020aa7d311000000b005224f840130sm3914851edq.60.2023.07.30.03.13.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 30 Jul 2023 03:13:20 -0700 (PDT)
Message-ID: <8ee50871-e299-7a2e-2ece-a43e8263f6b5@linaro.org>
Date:   Sun, 30 Jul 2023 12:13:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH v4 1/4] arm64: dts: lx2160a: describe the SerDes block #2
To:     Josua Mayer <josua@solid-run.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
References: <20230730092422.16771-1-josua@solid-run.com>
 <20230730092422.16771-2-josua@solid-run.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230730092422.16771-2-josua@solid-run.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/07/2023 11:24, Josua Mayer wrote:
> Add description for the LX2160A second SerDes block.
> It is functionally identical to the first one already added in:
> 
> 3cbe93a "arch: arm64: dts: lx2160a: describe the SerDes block #1"

Please use proper commit xxx syntax as asked by checkpatch.



Best regards,
Krzysztof

