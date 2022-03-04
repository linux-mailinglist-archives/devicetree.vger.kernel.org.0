Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E98784CCFBC
	for <lists+devicetree@lfdr.de>; Fri,  4 Mar 2022 09:13:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231277AbiCDIOV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Mar 2022 03:14:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232331AbiCDIOS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Mar 2022 03:14:18 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 937F64D607
        for <devicetree@vger.kernel.org>; Fri,  4 Mar 2022 00:13:31 -0800 (PST)
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 31B353F615
        for <devicetree@vger.kernel.org>; Fri,  4 Mar 2022 08:13:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646381610;
        bh=PN+MwFyyD7KNKhN3V9sTc9ozhjbNqMNAeFcwOrkH/Mc=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=LyE3cCk1s/+P7lGvhSeeFCKUUMykob1IrNbtpdZmjJW/KeITuPlyJs7uy7mrmPKdF
         JDI17xwjcuAWXr+LrV2OkzSYuZH+QOPdiPP2aKhpxoS82OngCgdVsFxy+g8UjfupSk
         +FwrjEBIzLfMAJ58WaDwH1SSsAahBPKU8WWp6JBVPHvW6RZtP2BfWB6klqCXyWfcRP
         A12EOJVuyRz/Z8dbp3bKvc9z47Lp6AsFpI6bJ+/At6AN1hPielByGEoM+Kx/rVL2je
         VOaVkrEeaqBsQNhKXVqFRuzCDvQI4BJj8U6yyAXERznn6n8dJ/182G8p2x4LaWAirS
         X8uo9jGSHpzDw==
Received: by mail-ej1-f69.google.com with SMTP id k16-20020a17090632d000b006ae1cdb0f07so4049241ejk.16
        for <devicetree@vger.kernel.org>; Fri, 04 Mar 2022 00:13:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PN+MwFyyD7KNKhN3V9sTc9ozhjbNqMNAeFcwOrkH/Mc=;
        b=dskjr2EISCV0Twa4pdAAAMPkzJNsab6sSu3AWcUwTH2RH+hn+pRE9fiH6yrBxtKFi6
         DEj+dvmYJVZsjpDHXG15TVTnHyXODX94NVRIgFQMOfDUdnV+4wRHexyk1Ov7S7NTWCGe
         OTeEpZFx0H5ZqmAgUg5A11Gyw6oBoY3pDFAz8OMVvrNhrx6cs1VhAu0WJtwkTEMAfbb4
         2c+WPukuHLCqeQD3SEBUwdcnjpIdHfCuQlK7/4ZMLo5SZBYcal7niUEKbE9NzX2T2ED/
         A7VpKArgh9Js1RLWoxx/XtDNy70qXe1Q4mXhsnlWhtYQ5q1ny3li+E45A7Jsxz5KhCY/
         LrGA==
X-Gm-Message-State: AOAM5318ykc/cXFi1W1Lr7n0BDyrbOof3es7JBsonPAfZ0ra9wns6CLA
        iB37gihzNqmTFcC89SyKSNT0I21aXeKL10r5MtlDYVDw6iCNlyajkRs9SFClbG8mmGoSpLHabF4
        rBBpDMhc7QLxIGl8StA+ZG7CRUAAO935gj9rFN2A=
X-Received: by 2002:a17:907:d0f:b0:6da:63d6:b84f with SMTP id gn15-20020a1709070d0f00b006da63d6b84fmr9408975ejc.302.1646381608975;
        Fri, 04 Mar 2022 00:13:28 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxtmf4M0vAgtkkJF2MjO14bSsPEfmcjiMMhZeu+y4rewMDiaaGtcHGsndvzz05ZBZ+o9hJiUg==
X-Received: by 2002:a17:907:d0f:b0:6da:63d6:b84f with SMTP id gn15-20020a1709070d0f00b006da63d6b84fmr9408960ejc.302.1646381608738;
        Fri, 04 Mar 2022 00:13:28 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id z2-20020a05640235c200b00415cec386a5sm1889584edc.16.2022.03.04.00.13.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Mar 2022 00:13:28 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Sergei Shtylyov <sergei.shtylyov@gmail.com>,
        linux-renesas-soc@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Biju Das <biju.das.jz@bp.renesas.com>,
        Prabhakar <prabhakar.csengg@gmail.com>,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: memory: renesas,rpc-if: Document RZ/V2L SoC
Date:   Fri,  4 Mar 2022 09:13:23 +0100
Message-Id: <164638154584.220122.4689452706717484391.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220301123527.15950-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20220301123527.15950-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 1 Mar 2022 12:35:26 +0000, Lad Prabhakar wrote:
> Document RZ/V2L RPC-IF bindings. RZ/V2L RPC-IF is identical to one found
> on the RZ/G2L SoC. No driver changes are required as generic compatible
> string "renesas,rzg2l-rpc-if" will be used as a fallback.
> 
> While at it, drop the comment "# RZ/G2L family" for "renesas,rzg2l-rpc-if"
> compatible string as this will avoid changing the line for every new SoC
> addition.
> 
> [...]

It's late in the cycle so I might not be able to push it out to SoC folks. If
that happens, I will keep it for the next cycle.

Applied, thanks!

[1/1] dt-bindings: memory: renesas,rpc-if: Document RZ/V2L SoC
      commit: 69d6941949ea8a113ffc89410b0cb79bc7b35a0b

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
