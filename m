Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A93DD58718E
	for <lists+devicetree@lfdr.de>; Mon,  1 Aug 2022 21:43:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229787AbiHATnB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Aug 2022 15:43:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234155AbiHATnA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Aug 2022 15:43:00 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDD241145B
        for <devicetree@vger.kernel.org>; Mon,  1 Aug 2022 12:42:59 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id y13so8264330ejp.13
        for <devicetree@vger.kernel.org>; Mon, 01 Aug 2022 12:42:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=4GI48oiXQdQ4wM36ABBTSLbZpyQAAePmrwlq8QRxvlY=;
        b=arIv3YiKHTGDWfbh2fsMjrIpT1Hp6uzV37Yd+Fdk+Prd5BwNWb0CwyuOui+hJ5+I89
         D2Schslcf+SfSM8Qt6N5/H7rjsjlPMsJuMaV2SXZOgNw44ADyi8u482TcsGc3SkHpWlR
         d2Xzu21JkLCYjJ6xnWMKCrU0sGsVFtDPEPTxy3RRdABBNO5Cy5N6aJwtKYyu5ji7OE0K
         acA1r3V4zvi4DooGKgoiujml90JO2bsqmjwNOBK4QSjEKqza7W7KT2Dz74pIxqlZhuyy
         ytUqBTdHiYsyjOnHauZZKO7hy907d/hjmuu7Ir9Dtn2pacYAuFOU6A0XbwrD5CoAAGdV
         M1bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:content-transfer-encoding;
        bh=4GI48oiXQdQ4wM36ABBTSLbZpyQAAePmrwlq8QRxvlY=;
        b=HEw63UQCQieFd7zvy99Gv05lyxGg8+B3vysmgIVYELlUtqCtTWsBBsbfaJwuzrkaG2
         7WNZUep54mOWoYDlZ1O90knflpMIv+FHDNKqfB8RltEXDeO0VspasPX0mOqsmCrS45J4
         suEqw4z6KrySRHeSRqWefaIEYpWQ5WnP6eGyUC1Hf62h+Z0GLUVlJNhtAcj/tFlNxE2U
         x+HxIJPtRXt/Uu4SUT2PNlj5w8BjZGggfS17hE5xVZiPrplxGIwdbG7aQ3CHff9vwbJJ
         w2gNY/F+SxVreCv8vsJ7OdhIAiTvkRG7ebUO4/43pYdYRKBQwYcqDPoEzNQK2jX6S70O
         00Eg==
X-Gm-Message-State: AJIora8yV9PCXfCPXq26VnyOb2ojbG6CKFxlCkDP0GNdYJbyyhB2FLMj
        4TZwpV+vgMuccNlf81ogJ8HWPLOCAiQdRJjdyp0=
X-Google-Smtp-Source: AGRyM1uYyORoa4BJb6QPm4fPimJVlDQCn6AO+afFVxr7YQeeDorlF3VNd2oFPVLg3SJqsMCz5bRhE4ceCGaeT4zK414=
X-Received: by 2002:a17:907:9495:b0:72f:a158:7598 with SMTP id
 dm21-20020a170907949500b0072fa1587598mr13341087ejc.410.1659382977840; Mon, 01
 Aug 2022 12:42:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6402:1cc1:b0:435:abcf:8f38 with HTTP; Mon, 1 Aug 2022
 12:42:57 -0700 (PDT)
Reply-To: joseph_anya39@yahoo.com
From:   DR JOSEPH ANYA <aliceacha@gmail.com>
Date:   Mon, 1 Aug 2022 07:42:57 -1200
Message-ID: <CAMv=i7Ny1t6vWhZSTXXC_YnjrBT00yAQ4jbFg90EAW5nn4p2eg@mail.gmail.com>
Subject: =?UTF-8?B?55u45LqS55CG6Kej?=
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
X-Spam-Status: Yes, score=7.2 required=5.0 tests=BAYES_95,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2a00:1450:4864:20:0:0:0:62a listed in]
        [list.dnswl.org]
        *  3.0 BAYES_95 BODY: Bayes spam probability is 95 to 99%
        *      [score: 0.9655]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [joseph_anya39[at]yahoo.com]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [aliceacha[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        *  3.1 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

LS0gDQrkurLniLHnmoTmnIvlj4ssDQrmiJHmmK/nuqbnkZ/lpKsq5a6J6ZuF5YWI55Sf77yM5Zyo
DQrkuprooYzpk7booYzlnKjopb/pnZ7jgIIg5oiR5q2j5Zyo6IGU57O75L2g5LiO5oiR5ZCI5L2c
DQrlj6rmo4DntKLmgLvpop0oMyA5NTDkuIfnvo7lhYMp44CCIOaKvOmHkeaYr+eUsQ0K5oiR5Lus
5bey5pWF55qE5a6i5oi35LmU5rK744CCIOWwj+OAgiDmiJHlnKjmiJDlip/mlLbliLDotYTph5Hl
kI7lkJHmgqjmj5Dlh7rmgLvpop3nmoQ0MO+8he+8jOaIkeWQkeaCqOS/neivge+8jOi/meeslOS6
pOaYk+aYrzEwMO+8heaXoOmjjumZqeWSjOWQiOazleeahOOAgg0K5oiR5a+75rGC5L2g55qE5ZCI
5LyZ6KaB5rGC6L+Z5Lqb6LWE6YeR77yM5Lul6YG/5YWN6KKr6ZO26KGM5rKh5pS244CCIOiBlOez
u+aIkeS6huino+abtOWkmue7huiKguOAgg0KDQrmiJHmnJ/lvoXkvaDnmoTntKfmgKXnrZTlpI0N
Cg0K6Ie05Lul5pyA6Imv5aW955qE6Zeu5YCZ44CCDQrnuqbnkZ/lpKsq5a6J6ZuF5Y2a5aOr44CC
DQo=
