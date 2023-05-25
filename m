Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5AD94710C3A
	for <lists+devicetree@lfdr.de>; Thu, 25 May 2023 14:41:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240752AbjEYMlj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 May 2023 08:41:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230464AbjEYMli (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 May 2023 08:41:38 -0400
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com [IPv6:2a00:1450:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA8C79B
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 05:41:36 -0700 (PDT)
Received: by mail-ed1-x541.google.com with SMTP id 4fb4d7f45d1cf-510dabb3989so4439834a12.0
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 05:41:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685018495; x=1687610495;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cpy7HUUl9JUJVfHeyZRx3CTbUVGObKlyKlmgTELiasw=;
        b=glbAjOsFuG3Ml8u+wd7Y1a/2Fc4wTzuAVkkTtB6EJ0/+5B9AYfTYO+JX/EkU0skgJH
         eydJ4LiSHi9RmbdezgUcBGL1tJaAROtN8/hr9g8Q6ot663mwKPi+6sdlH4HPHGvyRt9h
         DpjTbXzeGABRW+228zV9wQg9wY3v9V1SmUSQZY5MnkrrEPI0h16BJohK/lHrzq+1Tofx
         Gd28p6ZKUCY9Nl5hsGgPPyM6BpegL24N1gZmJ5vmWL1maTm1PNg1qxQIeMy9LQ0X5/tJ
         jP/EL2DStY1hEKHt0nbcl+VWW5w5PdEeKoD3iPH5u259FtNm5bJ8DUoe4LKCsYLYKNzV
         exNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685018495; x=1687610495;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cpy7HUUl9JUJVfHeyZRx3CTbUVGObKlyKlmgTELiasw=;
        b=OngVEXMAnmXC1dyNBlsv66BKV0a+WfE5Or+FfU3ks6s0fh3/fvQ3ldg1TpJxU/1S8Y
         v/O5fF0f94nhC7cLF4wbUqpwBhNnsIKdzNfdGxvwZ5hFEnHsAIT3DXDRjkdZFAMhc7IT
         fKX6ugvoZE7qcUJS3sA82xjjQCrKH90d23fPVMtRhv0DcRnJlADAUni+s2PD3n1mrkGd
         v8H650ogb16F+k+3xHEeBOFGfDM5s21Rlz2jygVVaBlxSmwn30lCFss2zOl9VGjUBRvS
         z2wftOVQiiE9ijNkIp1FwUwloedceNDxrRApupD2ladx6wtPfzecmN7SY2hFvdmdpdlk
         8kYw==
X-Gm-Message-State: AC+VfDz3oWcUOvSuAUKgtHDRtcAZvfXLouIo253/B7pJnOt6rYi6O+2S
        VBgzG4+lk/RCEFaQ85so4gEK/dud6s8UXkL5P58=
X-Google-Smtp-Source: ACHHUZ6GVO3zO8q2fUcDkj728toLiDvsT+FZMBeMeFHLy61LBoFC0z0V6t1HNsh/aySSCO47u0Ze47+ttPdudim1lGU=
X-Received: by 2002:a17:907:72d2:b0:96f:d780:5734 with SMTP id
 du18-20020a17090772d200b0096fd7805734mr1400475ejc.65.1685018494809; Thu, 25
 May 2023 05:41:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:906:552:b0:959:c04b:2f00 with HTTP; Thu, 25 May 2023
 05:41:33 -0700 (PDT)
Reply-To: philipsjohnsongoodp@gmail.com
From:   philips <robertandersongood5@gmail.com>
Date:   Thu, 25 May 2023 14:41:33 +0200
Message-ID: <CAD7QbCC4_VG491ob+GN7dx0ao51c9pRLzxk04Koenxoz6KGfHQ@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
X-Spam-Status: No, score=1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,UNDISC_FREEM autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

0JTQvtGA0L7Qs9C+0Lkg0LTRgNGD0LMsDQrQnNC10L3RjyDQt9C+0LLRg9GCINCR0LDRgC7QpNC4
0LvQuNC/0YEg0JTQttC+0L3RgdC+0L0sINGPINCw0LTQstC+0LrQsNGCINC4INGH0LDRgdGC0L3R
i9C5DQrQvNC10L3QtdC00LbQtdGAINC/0L4g0YDQsNCx0L7RgtC1INGBINC60LvQuNC10L3RgtCw
0LzQuCDQvNC+0LXQvNGDINC/0L7QutC+0LnQvdC+0LzRgyDQutC70LjQtdC90YLRgy4g0JIgMjAx
NyDQs9C+0LTRgw0K0LzQvtC5INC60LvQuNC10L3RgiDQv9C+INC40LzQtdC90LgNCtCc0LjRgdGC
0LXRgCDQmtCw0YDQu9C+0YEsINGPINGB0LLRj9C30LDQu9GB0Y8g0YEg0LLQsNC80Lgg0L/QviDR
gtC+0Lkg0L/RgNC40YfQuNC90LUsINGH0YLQviDQstGLDQrQvdC+0YHQuNGC0Ywg0L7QtNC90YMg
0YTQsNC80LjQu9C40Y4g0YEg0L/QvtC60L7QudC90YvQvCwg0Lgg0Y8g0LzQvtCz0YMg0L/RgNC1
0LTRgdGC0LDQstC40YLRjCDQstCw0YEg0LrQsNC6DQrQsdC10L3QtdGE0LjRhtC40LDRgCDQuCDQ
sdC70LjQttCw0LnRiNC40Lkg0YDQvtC00YHRgtCy0LXQvdC90LjQuiDRgdGA0LXQtNGB0YLQsiDQ
vNC+0LXQs9C+INC/0L7QutC+0LnQvdC+0LPQviDQutC70LjQtdC90YLQsCwg0YLQvtCz0LTQsCDQ
stGLDQrQstGL0YHRgtGD0L/QuNGC0Ywg0LIg0LrQsNGH0LXRgdGC0LLQtSDQtdCz0L4g0LHQu9C4
0LbQsNC50YjQtdCz0L4g0YDQvtC00YHRgtCy0LXQvdC90LjQutCwINC4INC/0L7RgtGA0LXQsdC+
0LLQsNGC0YwNCtGB0YDQtdC00YHRgtCy0LAuINC+0YHRgtCw0LLQu9GP0YLRjCDQvdCw0LvQuNGH
0L3Ri9C1DQrQvdCw0YHQu9C10LTRgdGC0LLQviDRgdC10LzQuCDQvNC40LvQu9C40L7QvdC+0LIg
0L/Rj9GC0LjRgdC+0YIg0YLRi9GB0Y/RhyDQodC+0LXQtNC40L3QtdC90L3Ri9GFINCo0YLQsNGC
0L7Qsg0K0JTQvtC70LvQsNGA0L7QsiAoNyA1MDAgMDAwLDAwINC00L7Qu9C70LDRgNC+0LIg0KHQ
qNCQKS4g0JzQvtC5INC/0L7QutC+0LnQvdGL0Lkg0LrQu9C40LXQvdGCINC4INC30LDQutCw0LTR
i9GH0L3Ri9C5DQrQtNGA0YPQsyDQstGL0YDQvtGBINCyDQrCq9CU0L7QvCDQsdC10Lcg0LzQsNGC
0LXRgNC4wrsuINCjINC90LXQs9C+INC90LUg0LHRi9C70L4g0L3QuCDRgdC10LzRjNC4LCDQvdC4
INCx0LXQvdC10YTQuNGG0LjQsNGA0LAsINC90Lgg0YHQu9C10LTRg9GO0YnQtdCz0L4NCtGA0L7Q
tNGB0YLQstC10L3QvdC40LrQvtCyINCyINC90LDRgdC70LXQtNGB0YLQstC+INCh0YDQtdC00YHR
gtCy0LAg0L7RgdGC0LDQstC70LXQvdGLINCyINCx0LDQvdC60LUuDQrQktGLINC00L7Qu9C20L3R
iyDRgdCy0Y/Qt9Cw0YLRjNGB0Y8g0YHQviDQvNC90L7QuSDRh9C10YDQtdC3INC80L7QuSDQu9C4
0YfQvdGL0Lkg0LDQtNGA0LXRgSDRjdC70LXQutGC0YDQvtC90L3QvtC5INC/0L7Rh9GC0Ys6DQpw
aGlsaXBzam9obnNvbmdvb2RwQGdtYWlsLmNvbQ0K0KEg0L3QsNC40LvRg9GH0YjQuNC80Lgg0L/Q
vtC20LXQu9Cw0L3QuNGP0LzQuCwNCtCR0LDRgC4g0KTQuNC70LjQv9GBINCU0LbQvtC90YHQvtC9
DQo=
