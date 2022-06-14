Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6839A54B0F2
	for <lists+devicetree@lfdr.de>; Tue, 14 Jun 2022 14:37:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240547AbiFNMby (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Jun 2022 08:31:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356390AbiFNMa0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Jun 2022 08:30:26 -0400
Received: from mail-oa1-x2b.google.com (mail-oa1-x2b.google.com [IPv6:2001:4860:4864:20::2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6D0444756
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 05:29:51 -0700 (PDT)
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-fe4ac3b87fso12277685fac.3
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 05:29:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=lBFrwc11MgcaK75qf3EwNhKoIfwLYz4Dn7scEjO7Hwc=;
        b=bW4ry+cDHjp3R6BSQC4qtLLB0yb9+Pg8AlgRlzlKzR+DqUPCEFF1q+43QuoWSdcJ8q
         MMfIX0v4uejEgnIkZeTscSctyTJIN5TAje/OvFrQ+7zxba3t+G+BDUhQEDbaRXfshwIJ
         cbQH/d/U/1+1psEXnOuxlJ7bhax5uDR/e/iYSURRrbNFSkWXiqDygGYF4JoZ/39LVRbR
         rHFfmZMfVbJRNiNkas+9Qq1410UGf41bS/y9lmRSWKV6LDSGyXdb57axBKKH1WQBbaGF
         yHjboRc23p7Nn4M/RVPeSi7toIWKnpPukKxEtNYVdb2AnWqlXSq12HmkY/5rs33AaEgj
         3e2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=lBFrwc11MgcaK75qf3EwNhKoIfwLYz4Dn7scEjO7Hwc=;
        b=VymfDhmIa7qQPtr2lPHdmzWyit7/bNgeRsJDB2Jd8+RmWaGNcC2OAWsyU4UbqFSHDO
         k+YNRoBKMW1s4H3JTi45CmNAlSLUsMHytiSX3K7s9L7si53ICtUBgk0MUwHJm2HCuF2+
         RFnbAOm8cfSHW5k7qUG5C20Ym/Icx1ye0DHYDaR9qa+1TVsUBwhv/G6mPPxC+ZGbM9I2
         q621yMEvbykC7XtsBf7pxV1YN5TG9dPEgxMX0zDJAy4ng3+9QHsYk5DOfhhTmfuQ1WEl
         2e79vsFOp1+ZhtdC7DdSI3CFQR/vuRxxsChTGnGIGMznML9K0PZ+Bgt1Z8fhj6SQikfW
         smsA==
X-Gm-Message-State: AJIora/gXE2BDIWf/2s64mrXMx2qgvs1yr/g11KO1OjDEpcLgKk1MryC
        rGWUVWn8FbXN91WC3sI93iwCizWJnYdCrf/7unE=
X-Google-Smtp-Source: AGRyM1u/cdhiyEMdO5J/6E9s9gNeEDlY2YSndfDm3SlFpQYbSM87hXKMuvoLq4Rs2sSOqeDSAr2ZBlvLp+RKKxyyx8U=
X-Received: by 2002:a05:6870:648a:b0:f8:7602:8402 with SMTP id
 cz10-20020a056870648a00b000f876028402mr2108074oab.194.1655209791122; Tue, 14
 Jun 2022 05:29:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a8a:c46:0:b0:42d:ab20:ed24 with HTTP; Tue, 14 Jun 2022
 05:29:50 -0700 (PDT)
From:   Daniel Affum <danielaffum05@gmail.com>
Date:   Tue, 14 Jun 2022 15:29:50 +0300
Message-ID: <CAPkju_N+hs3eVMvma+iGBZjjWG-yKhjrJAK5V3XUscCkOtuG-w@mail.gmail.com>
Subject: Confirm Receipt
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=1.8 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLY,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Dear,

I am Daniel Affum a retired civil servant i have a  business to
discuss with you from the Eastern part of Africa aimed at agreed
percentage upon your acceptance of my hand in business and friendship.
Kindly respond to me if you are interested to partner with me for an
update.Very important.

Yours Sincerely,
Daniel Affum.
Reply to:danielaffum005@yahoo.com
