Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 90779595115
	for <lists+devicetree@lfdr.de>; Tue, 16 Aug 2022 06:52:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231777AbiHPEwQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Aug 2022 00:52:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233741AbiHPEvn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Aug 2022 00:51:43 -0400
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com [IPv6:2607:f8b0:4864:20::733])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09937DB07C
        for <devicetree@vger.kernel.org>; Mon, 15 Aug 2022 13:49:16 -0700 (PDT)
Received: by mail-qk1-x733.google.com with SMTP id g21so2819940qka.5
        for <devicetree@vger.kernel.org>; Mon, 15 Aug 2022 13:49:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc;
        bh=ej3T27wdcOl5hgxFKEEvscpLUDARFbq7IX1O4+1Fbq8=;
        b=BEFvQCt0f63kw5eeVup3KAVBKhpf++rbLrvVI0tD1CxTVWuv5Rudcu+JjjUDGbdZ32
         YlBbbScJ1mi3sD5XJfJ1PGAMu6KOv/S7Sbi1HGJIu543q1cnpLlKXcmALmfvy/tNxRP5
         Q64GyzEPju1ZJykHQFTXx8uINrt5K3TTj9J6h9AoiK4QAdzQ9SufLteRWF7TPz17ZVw8
         VEAG6avDIVw5xoEe5rv1EfSAc+zoXzCSo5fdQtBoGbuaDnTaKgrkPqN37iAjkS9o6BBf
         LNN8WNPLUH90Am1EuQaYuPaRRdCK2hxPkrmqFghps44ys9/Pp5i+vRG6Xc1d+BEwyxej
         I02w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc;
        bh=ej3T27wdcOl5hgxFKEEvscpLUDARFbq7IX1O4+1Fbq8=;
        b=4Xlv22Mt7ZEDvapLMBSDa7ZmmqLb0XDf/G+efjQqWQCAbM5l00Wyy1YsWfQ/v7kcO1
         wO3C5p+MP+gSW89vh+IdG2d1fNy8+QUwWzxUNau63OR9WxAa6T1TzK0AUh+HSgyMD6Xc
         eG8AuTyEcv9z6tamzkxaHdEwHw0nQsRK23+3kY3ni46NX6k3p4e+J0vnaCErzbI4Sb7l
         M2xBZGEqKV9+Rx0BV0OxIZyQb94PE4X+ykxhbfUrodUcx83841yMf8bRu9Km+v7SLWHn
         UKP23yDs1kh6lJsFgGHNmBVoBktb2zowT3fI5w2DW0tQsNsW7dfpQjGprILM7iNRHmLR
         kycw==
X-Gm-Message-State: ACgBeo34LoqcwNgDNxKqHnhwMBhCyS6253W/bSqIhnDEYzOqcrmCBGlx
        Qc/YOZiLc4hUxqjypUHWYkL3/78KlOf+EOj9sm0=
X-Google-Smtp-Source: AA6agR7ndOrZjMDBJwIxxDqcamWI0ULmp0y7gaZJ2pOjsC8D1v4MDjLRzOokz6xmZ8oifLQeyIah3K/su8jEPklZWYI=
X-Received: by 2002:a37:5481:0:b0:6b9:573e:a813 with SMTP id
 i123-20020a375481000000b006b9573ea813mr12478593qkb.197.1660596550234; Mon, 15
 Aug 2022 13:49:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab3:ef88:0:b0:46d:3a61:256e with HTTP; Mon, 15 Aug 2022
 13:49:08 -0700 (PDT)
Reply-To: wijh555@gmail.com
From:   "Prof. Chin Guang" <dmitrybogdanv07@gmail.com>
Date:   Mon, 15 Aug 2022 13:49:08 -0700
Message-ID: <CAPi14yJvGA2=bmp3J6Jke-6XMMcPdNT_WT5w9yJCSznB-X6FRw@mail.gmail.com>
Subject: Good Day,
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.2 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [wijh555[at]gmail.com]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [dmitrybogdanv07[at]gmail.com]
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [dmitrybogdanv07[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:733 listed in]
        [list.dnswl.org]
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  3.1 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
Hello,
We the Board Directors believe you are in good health, doing great and
with the hope that this mail will meet you in good condition, We are
privileged and delighted to reach you via email" And we are urgently
waiting to hear from you. and again your number is not connecting.

Sincerely,
Prof. Chin Guang
