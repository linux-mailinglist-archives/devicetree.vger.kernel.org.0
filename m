Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD51D624250
	for <lists+devicetree@lfdr.de>; Thu, 10 Nov 2022 13:24:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229918AbiKJMYb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Nov 2022 07:24:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230206AbiKJMXq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Nov 2022 07:23:46 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B102679D00
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 04:22:55 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id h133-20020a1c218b000000b003cf4d389c41so3275173wmh.3
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 04:22:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:sender
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=q8JY0FOCcQgMEUyu1caxwPYPrYYXqBETXMSNJCvU2z4=;
        b=ijlYb3+pnoUi+wur248+s4uFs1YmfCCxxvWgsVggA4yRs/5ebSpYLYLzP4u6TxQgYA
         F6uIIyXD9gHsJAGzgGesKEAAhDtMyDwrzPbGU3VnWciQxy7bJvPnCaV+6Xe3tlKG4nme
         3z7OtlYP9+0ArnQG3QXHo9YvSJkiQH3BQOMsyJoH7Yebb6NBOdvVbexR1OWpi2VroP8w
         kgZcKpHUu92PGcz3Og8CqOBd25GtY/YJds3rQ9JExfvR5e2XIpWzH50NXo2HepWCnaq3
         ehXoBJTECzU+bLUvImbz+Qd4UjB3aVhIxM18B+G9s1myCweHtkhQbGyBnpYBWp+fTcGz
         QxUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:sender
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q8JY0FOCcQgMEUyu1caxwPYPrYYXqBETXMSNJCvU2z4=;
        b=Aej1QKM6j5mBdWQNLp0U+fGWDWegboNnx7xcaDkTy/73sEZqCmqjcy8NplSUovgow8
         hUtpD9O3OjYrQVwaCWzEOZKIo5NDMo7mjEoMLLzAdJDE9PnA90Isetu7e3kXbcdmPEzr
         OgyQYwx0kmXqAJn/DlZDicA2qEINNknRY4hvESkgoTbnUg1fIg3Ih6WWtk9bbmkN191m
         amPQP6AJSudSyU/NS4g3Mt3kPMgjaFaRdzVOJyPmJaD8JNKf5495b1H8zQMB7MXXFexR
         wisayaAD0+Kosw6aQGodeagd/ASv28QS0iaid16g9Q1ds9YVCHlns2zRvjOmnD08K5kF
         B9oA==
X-Gm-Message-State: ANoB5pkfZ+SWFSQDk/+fRGryAQBkZZoKbUslOKes2Z8/ArH9Q8Fw4F1F
        SPOf4sBx9AiKaqZ0LwlkBa6BVWFgorM8KKpMZMY=
X-Google-Smtp-Source: AA0mqf7R052LoKph29Ec9PlI+TKgzoeVdAzxGy1MKnJ1FlwbPCuTIXRg7cZkVqahQJb7/DwQYns06KL1fbZPiI5uvdI=
X-Received: by 2002:a05:600c:230d:b0:3cf:acc6:ba97 with SMTP id
 13-20020a05600c230d00b003cfacc6ba97mr12746789wmo.102.1668082965979; Thu, 10
 Nov 2022 04:22:45 -0800 (PST)
MIME-Version: 1.0
Sender: onyangobarack19@gmail.com
Received: by 2002:a5d:464b:0:0:0:0:0 with HTTP; Thu, 10 Nov 2022 04:22:45
 -0800 (PST)
From:   Richard Wahl <richardwahls16@gmail.com>
Date:   Thu, 10 Nov 2022 04:22:45 -0800
X-Google-Sender-Auth: AfADJX0yS0ycoFOMNcwZIFeHYbU
Message-ID: <CAALik=rufP2kRxjDstjXgAGRmLE4EopGCQA84w85bgXu7fWQxg@mail.gmail.com>
Subject: 1.200.000 Euro werden Ihnen zugesprochen
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=4.2 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,LOTS_OF_MONEY,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        UNDISC_MONEY autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--=20
Gute Nachrichten,

Es wird erwartet, dass Sie Ihren Preis in K=C3=BCrze einl=C3=B6sen. Ich bin
"Herr Richard Wahl". Ich habe in der Power Ball-Lotterie ein Verm=C3=B6gen
gewonnen und spende einen Teil davon an zehn
Wohlt=C3=A4tigkeitsorganisationen und zehn gl=C3=BCckliche Menschen. Zum Gl=
=C3=BCck
stehen Sie auf meiner Liste, um dieses freiwillige Spendenangebot zu
erhalten. Antworten Sie jetzt, um weitere Informationen zu erhalten

Das ist kein Witz
