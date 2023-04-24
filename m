Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 372486EC42E
	for <lists+devicetree@lfdr.de>; Mon, 24 Apr 2023 05:56:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229941AbjDXD4C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Apr 2023 23:56:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229641AbjDXD4B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 23 Apr 2023 23:56:01 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1003210A
        for <devicetree@vger.kernel.org>; Sun, 23 Apr 2023 20:55:59 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-4ec8eca56cfso4233553e87.0
        for <devicetree@vger.kernel.org>; Sun, 23 Apr 2023 20:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682308558; x=1684900558;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9IBIIIVB0/UVXXPchIriYjqhJgKzHwJL4Sxu/PzCESo=;
        b=smV6HOzrYTHiRNY2XWf2xMzgLTg9ozkS4YLiYL88+gI4cBk86K40XM1Rl3gWgMVL3e
         RDcORmBkFZ8rFfn4XgSbA7xhxNaF0tsyZyl4qBvz0Xfxn1YFGcpS7y7Ol81IOlT54qIA
         YKrMZ1jQq1LBIKLU/Aop0zYVUBN8xlz7dyiMIjwUHRsht3nQJiXbuWfqpshUgwQLqETb
         ZKFj3MTGDDc6GDPPjAEj0ctCChhVyBn7/ptOnrd525aLu3kVDB6FOs4vORJketrvFblH
         cz+G44fiG+gT+DfxEYJCmfP5fIL7CI9GShHkazOHk7oFD2vCsKPkTckirJcQ4nXr0DyC
         SFHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682308558; x=1684900558;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9IBIIIVB0/UVXXPchIriYjqhJgKzHwJL4Sxu/PzCESo=;
        b=gKUy+GqrlRBN2PAfDeGeMsW/jXdFVUveNKj6Yws06+wrDQ6IH6mKn2WQdDpbw0jwV9
         cFnHBjCp7MPjZ/2eV1W6pfmrWtr4sTSx/K/Nyu5o9795GgsuVtUSDmx4JgG8sFAlw22B
         ByrJwFQdxd/s02dVWC8G0198wa6yr4qyNf8xtxY8ZlomVJQL5wYGbhdRi/Mj/zYrXvtx
         kjZRikdCb29c4M3xBmc53wiIsz15jpzghrBd4XkwCQ5yeMQfhph15rSICiU3dRj+jJK+
         1b5QPgWHH+Kp0SMg2I988zcOH0fNPoUkGgy0FI62Rljd2NhBqGTRFlIjvbeyDmRaKfNf
         ioDQ==
X-Gm-Message-State: AAQBX9fsQ59fbix0UvP3r6r5TfS5uqqKt+/D76/bKKj9+gKgWNkmel9+
        Sl46mcvFqtgj0AS0UgIj9eJvRmSt3vMSXZrss+Q=
X-Google-Smtp-Source: AKy350Y+dNF7KbjDlRbTkO4RprH9BgBbOo9+7FfUmFcQ9fxuusTfLgFanDOTWkv+hNZw943Ldk6IJcul9aG17BAefvg=
X-Received: by 2002:ac2:4e49:0:b0:4ec:a18e:f985 with SMTP id
 f9-20020ac24e49000000b004eca18ef985mr3024928lfr.13.1682308557668; Sun, 23 Apr
 2023 20:55:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab3:760f:0:b0:227:9d30:f04b with HTTP; Sun, 23 Apr 2023
 20:55:56 -0700 (PDT)
Reply-To: officialeuromillions@gmail.com
From:   Euro Millions <pete.wetzlinger@gmail.com>
Date:   Mon, 24 Apr 2023 04:55:56 +0100
Message-ID: <CAAik_9QQ9hO1h2yT5-HS8vXgU1TNwae96AxNCFgdWiSF-b_THg@mail.gmail.com>
Subject: Aw
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Herzlichen Gl=C3=BCckwunsch, Sie haben am 20.=C2=A0April=C2=A02023 =E2=82=
=AC650.000,00 bei
den monatlichen Euro Millions/Google Promo-Gewinnspielen gewonnen.

Bitte geben Sie die folgenden Informationen ein, damit Ihr
Gewinnbetrag an Sie =C3=BCberwiesen werden kann.
1.) Vollst=C3=A4ndiger Name:
2.) Telefon- und Mobilfunknummern:
3.) Postanschrift:
4.) Beruf:
5.) Geburtsdatum:
6.) Geschlecht:


Herr Anthony Deiderich
Online-Koordinator
