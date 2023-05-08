Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 95D426FB6C5
	for <lists+devicetree@lfdr.de>; Mon,  8 May 2023 21:33:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229560AbjEHTdv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 May 2023 15:33:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229492AbjEHTdv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 May 2023 15:33:51 -0400
Received: from mail-vs1-xe35.google.com (mail-vs1-xe35.google.com [IPv6:2607:f8b0:4864:20::e35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80EE655B6
        for <devicetree@vger.kernel.org>; Mon,  8 May 2023 12:33:50 -0700 (PDT)
Received: by mail-vs1-xe35.google.com with SMTP id ada2fe7eead31-4360e73d0d4so206131137.1
        for <devicetree@vger.kernel.org>; Mon, 08 May 2023 12:33:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683574429; x=1686166429;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C+z24Pl7od6xO10XmMEfecsYemTIfW+XARlPRi62dVY=;
        b=NKC2xbsrIAqwZnAVNovjf8zjnCsKt/8YyTNqe4ImJn8rgL9ns2ZMrJEkZ34wn0c8rs
         46gcStl2U/KjyFl4mnFCno9P+lzFVRo7kRqWxYXd+VA8ZOmjrUri2yKB6fB4fz1jZK/A
         ncjNfzRSPZRLfwdyxwLhhXW8GM7DGs6zxfW0BpQrmCKRjG2Srk6DDG6VNAgioaEwVakp
         RW15D74SryfFaHEY6Dyp2uTgiwqwzthRK7ACfVvfAmsNxbBh/Nlt3hmHEuv16fZ6fIAq
         mMzokxLXkm8F3N49ZQlnOCoz2NN35PV6WNqGUQ2F6Rb9GNvaBu1ZM+Dy0opIZlz8agqe
         sgDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683574429; x=1686166429;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C+z24Pl7od6xO10XmMEfecsYemTIfW+XARlPRi62dVY=;
        b=WMXNO+H82IRuRAJ+D2oZjg+Wwf7YNi6fuDFq+17dt6X3vGiGksZGjp/ihq4OH9yJow
         AEXWsRhtSVXYgCwFworh6RdBPnUQKZJP9A3boLn69BjDhykzA4l54QfhmAQkgKlmWqpa
         8zxij3cD1QH+8wwQQK3zhgfxAGMyJrMgVvMPXjDPW/Fv7EdZ5McdHzUPDN9U48Iv1bpc
         F9JE9o7ZAY6wOPxRSxuoDn95tazb54O+NQTV3+8zynPRGZDQMXN6QNG49kKVGrjYjA85
         nDlCPR82b1T55no8O2BRAFaQ8/aZbEYvueKggbClokv5RV4qwouAH5m+IeSCWOjufAb9
         n5zQ==
X-Gm-Message-State: AC+VfDw5fwJffivTxNu1nG6jQW84VnFoAzEUbF3IZ031MXQAupO+ah7o
        aRY4OXjcOh+3/GfJSstGvNmhquJzWZ/6ERFZgSQ=
X-Google-Smtp-Source: ACHHUZ4RT2WyYwe1mgXBePxLL+IG5Mbt5GuuADocBhrpxGceOn6PCQr3WQgqkJsr5PMPALjlOfRE/fBIrzNbsicaGmQ=
X-Received: by 2002:a05:6102:445:b0:42c:59ad:1bc2 with SMTP id
 e5-20020a056102044500b0042c59ad1bc2mr3990874vsq.33.1683574429489; Mon, 08 May
 2023 12:33:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a59:a74d:0:b0:3cd:9013:43b6 with HTTP; Mon, 8 May 2023
 12:33:48 -0700 (PDT)
Reply-To: pmichae7707@gmail.com
From:   paul michael <paulmichael2124@gmail.com>
Date:   Mon, 8 May 2023 20:33:48 +0100
Message-ID: <CABh2_VmzE5iOXC69yFc76G5oBusF-7L-4QT-oWf6p-A6BRxeoA@mail.gmail.com>
Subject: Greetings
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.9 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Every time I retest your email, it tells me to check with my ISP or
Log onto incoming mail server (POP3): Your e-mail server rejected .
Kindly verify if your email is still valid for us to talk.
