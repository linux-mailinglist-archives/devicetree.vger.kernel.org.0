Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 931D14C44AF
	for <lists+devicetree@lfdr.de>; Fri, 25 Feb 2022 13:38:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231646AbiBYMij (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Feb 2022 07:38:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231651AbiBYMij (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Feb 2022 07:38:39 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6BDB18E3D0
        for <devicetree@vger.kernel.org>; Fri, 25 Feb 2022 04:38:06 -0800 (PST)
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com [209.85.218.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 89B243F1B6
        for <devicetree@vger.kernel.org>; Fri, 25 Feb 2022 12:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645792685;
        bh=9eC16w0KRE+2yvJrpb1nSJBb3vk6hCAAmoSgEiZhoQs=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=laoq14YVYtvNIjFEdrIZALHLEj42Exm4YLI4O5SVuaiQ1Xff5ClrXffz0PJHxTYur
         i0dycWFVMeuLhmwOx730P68hNlujaDtPi74LYC0y0aZi+hopLtArZ5S3uF0F3yfJe7
         GZnqnKxPJaL8nXicw3XVJgCQcCRVxy+b6AWikVO65Dc2UNg7Vum0oMpAZm/+0oUaMZ
         pP/T5PI2yWtmsVnTEGNi3pWKl+xmSVnTANVQd6hASat9Fj8VocuzA13xQpRt9SJulL
         DTIxZ/NO7jTOIX2BsuqL/kxufY1oBfsbqXrHL/CNjQm/QiDmV1Q0Bx6iDtR6455XXF
         dojW4J82QxAPQ==
Received: by mail-ej1-f71.google.com with SMTP id r18-20020a17090609d200b006a6e943d09eso2603621eje.20
        for <devicetree@vger.kernel.org>; Fri, 25 Feb 2022 04:38:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9eC16w0KRE+2yvJrpb1nSJBb3vk6hCAAmoSgEiZhoQs=;
        b=oDDp3ZhWQE8HZ6Qm465k1QMHRj/2ub1HRhDKiswrrwEhAt2dmqBct7ewYaWJd0EHdP
         OP+qCgXH5plFMmcR1m49FCev0IyrjQopQ9ArNbn+MLv7OmNzRGBtZfBIB0MvApEF2Yxi
         fUcg5frgavWAmpd+PLQatFlEfSkx5v3J5D/z/D5FEelfclyIK4ZD8m+kDEqik60TVFmj
         Oj2w54L/SjXTwwC+OK4ufmp5eXJjFwZ9f8e+vTKTkknoGHgZSH65VWQg1qNYGy7H8P7W
         FQJLGwc2UNJzNl1Y92eQGtPWcvCBryJVC4ZfBY0ufDeNJGJYZDGXHjK7YE6uLDSSTxAu
         FIXQ==
X-Gm-Message-State: AOAM5314ZgmDzmVA+RMQTdyNCeql1eHA2EWY8DJUia6zYuVqGn7CZ61L
        iN+TvA5BiCVz0Mx0+pvTvu6/OYgncXMS0GtKgoQ7Z4YYhp/Ra3EGh+tQfWYZfohzG3u4avjHy9G
        4zgx/cvRHviaVzrcaH/Bnp1o3DLNPyPodicmRr/0=
X-Received: by 2002:a05:6402:5242:b0:40f:6a4f:ff33 with SMTP id t2-20020a056402524200b0040f6a4fff33mr7043598edd.30.1645792684181;
        Fri, 25 Feb 2022 04:38:04 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxmWM9zne9h4DES6Tv7ynAO/XZUfU2hSXW7BbeOG6cPsrvgRU72gLrcjZtXnDIhtiqtPgBpJg==
X-Received: by 2002:a05:6402:5242:b0:40f:6a4f:ff33 with SMTP id t2-20020a056402524200b0040f6a4fff33mr7043584edd.30.1645792684016;
        Fri, 25 Feb 2022 04:38:04 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id co19-20020a0564020c1300b00412879e4645sm1236911edb.55.2022.02.25.04.38.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Feb 2022 04:38:02 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Julius Werner <jwerner@chromium.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/3] Update lpddr2 revision-id binding to match lpddr3
Date:   Fri, 25 Feb 2022 13:37:59 +0100
Message-Id: <164579264189.173354.7844029461278884866.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220224003421.3440124-1-jwerner@chromium.org>
References: <20220224003421.3440124-1-jwerner@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 23 Feb 2022 16:34:18 -0800, Julius Werner wrote:
> This patch series updates the device tree binding for "jedec,lpddr2" to
> encode the revision ID (mode registers 6 and 7) in the same way as they
> were already done for the "jedec,lpddr3" binding, and deprecates the old
> way.
> 
> Julius Werner (3):
>   dt-bindings: memory: lpddr2: Adjust revision ID property to match
>     lpddr3
>   memory: Update of_memory lpddr2 revision-id binding
>   ARM: dts: Update jedec,lpddr2 revision-id binding
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: memory: lpddr2: Adjust revision ID property to match lpddr3
      commit: 80ce91730d3283f10810245db2605498d794fa29
[2/3] memory: Update of_memory lpddr2 revision-id binding
      commit: a06bf59d07f45a0a6ab4ab8ac69c1d708d3fadcb


Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
