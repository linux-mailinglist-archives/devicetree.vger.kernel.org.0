Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 550785E62F4
	for <lists+devicetree@lfdr.de>; Thu, 22 Sep 2022 14:55:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231791AbiIVMzt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Sep 2022 08:55:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231484AbiIVMz3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Sep 2022 08:55:29 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8461C9A687
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 05:55:02 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id x27so14632571lfu.0
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 05:55:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=XN7fgV/2m8FW879qnMRu32mCTvjCyjCSyyZpC6w7m7Y=;
        b=bd8040yxj3B6AtxorIhc9/ygokzyW+LzXuJiltYwNzYtvMGkWjxnq6RUjSBN8+YSyn
         tBq8XLybWMIOa0IGRhD84OT6q7nQAXNG2jVfQi/wZbnn2f0dseNmTKxXX5acp0NCDO4R
         FP3YRjPz9M/uTwNHZPkXsDWiDE51iUCHztk1IK3Dbuan4C8sNyP6RpzRAAXN/vVST8wJ
         tXMElj8UvBQtmcsteRYvfARwXjkyvEmLUXYq85ZsjhW7V0zgctWMvO2WUEL3qNomHCE1
         mmnAv1lu2KTsn7Z5xjRsw09wpNt6Sr/sJKURKEaJD2sSDp+IvoVDetwf7hNF73s30ACf
         WB+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=XN7fgV/2m8FW879qnMRu32mCTvjCyjCSyyZpC6w7m7Y=;
        b=riDlEwCukdoTss08sa/bKQyDdlrpZdNnWkIolN9C39JGUuqOuyIOrN5HKbdnziNUvH
         ggoGa17enXUv2nPcdgfiYmvyPiXwiNf+Pwi/V7ufBAV205KcZEQiuostV+qM5EZqoubP
         hxU+FQ1+6/E/PbPP+COi6z2lc/L33nxDcsHf+NhRVR48E2zhHbnYFnWINmtbKUlURERW
         hwFj8llmXnkb4wpo+Gu4lIulQ4VBikTdBZWdPu3Huhxto/Zs6tTSRhtRo06z0QPxcZc2
         QXh+QMRzUve28qtrfn5QkrW50gbsppAv9Yuse5cbaEtcAedA3uthlJSLKuOWpkhE32Kv
         fkiw==
X-Gm-Message-State: ACrzQf0OBDzuoHdr+oXagcPLqae0FsT40SP6H1gXojBnPGXuRLJam4JU
        6Avaus1jXIDAUoEkV7zQG+ruxw==
X-Google-Smtp-Source: AMsMyM7Ts2WYAUA7HLB8Cder/jargsWJeCqHAoRewDq3r0RDccZK3M1sGSZ3fGbUJYftoWM6fvW+bw==
X-Received: by 2002:a05:6512:39c3:b0:49f:dee8:c100 with SMTP id k3-20020a05651239c300b0049fdee8c100mr1330441lfu.168.1663851300504;
        Thu, 22 Sep 2022 05:55:00 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id v21-20020a05651203b500b00497ac6b2b15sm924644lfp.157.2022.09.22.05.54.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 05:55:00 -0700 (PDT)
Message-ID: <f1dd4e27-efc7-ef4c-cb30-5aeea6a55473@linaro.org>
Date:   Thu, 22 Sep 2022 14:54:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v4 01/10] dt-bindings: soc: renesas: Move renesas.yaml
 from arm to soc
Content-Language: en-US
To:     Prabhakar <prabhakar.csengg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Conor Dooley <conor.dooley@microchip.com>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        Heinrich Schuchardt <heinrich.schuchardt@canonical.com>,
        Atish Patra <atishp@rivosinc.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-renesas-soc@vger.kernel.org,
        Biju Das <biju.das.jz@bp.renesas.com>,
        Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20220920184904.90495-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20220920184904.90495-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220920184904.90495-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/09/2022 20:48, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> 
> renesas.yaml lists out all the Renesas SoC's and the platforms/EVK's which
> is either ARM32/ARM64. It would rather make sense if we move renesas.yaml
> to the soc/renesas folder instead. This is in preparation for adding a new
> SoC (RZ/Five) from Renesas which is based on RISC-V.
> 
> While at it drop the old entry for renesas.yaml from MAINTAINERS file and
> there is no need to update the new file path of renesas.yaml as we already
> have an entry for Documentation/devicetree/bindings/soc/renesas/ folder.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

