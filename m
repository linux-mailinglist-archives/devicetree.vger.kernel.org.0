Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C7E0655D46
	for <lists+devicetree@lfdr.de>; Sun, 25 Dec 2022 14:10:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229445AbiLYNKD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 25 Dec 2022 08:10:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229631AbiLYNKB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 25 Dec 2022 08:10:01 -0500
Received: from mail-vs1-xe2c.google.com (mail-vs1-xe2c.google.com [IPv6:2607:f8b0:4864:20::e2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24EC22AE1
        for <devicetree@vger.kernel.org>; Sun, 25 Dec 2022 05:10:01 -0800 (PST)
Received: by mail-vs1-xe2c.google.com with SMTP id 3so8403862vsq.7
        for <devicetree@vger.kernel.org>; Sun, 25 Dec 2022 05:10:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K1DFvd/qB2iPwiRdxjvsshI/YDS4Nv+p2asGKuDLehw=;
        b=IOjoR6E3xrSRc1h/vzh4ywDX4D8KcpV8NUbWBQolOST5S4/rqsiiIVzegQo6qUUfxG
         ms07edslAAi3te4oxW/82CmRDbNMUyl91XKYDYBaltk8m7NOS3Haa02gBgG8AenkZAWP
         4fQPL9vSDN/Vx6KVA+BDnMT2R96qQ/v30RSU0Dzkd3DE7PasfUGCGBMQcw1/BJtENrDq
         K3G42xXTmqBmlZV7deCrJ2dScEEPkhc+QYYJ14yKhfBRr2oLaVVBQYIQWpUg05V7MudA
         rf176LtiZxxZUa8L593TvIfUOD8ibwS0GS8ro0b1W/e/+4UqMB29D/mRPb0awI8X5NsX
         9qWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K1DFvd/qB2iPwiRdxjvsshI/YDS4Nv+p2asGKuDLehw=;
        b=izh+cD56Uf1OBUBTUiwDmbgqwnhIqON58FFEEg3tOy3q6AsHidFJEmdAMjv3hk6w+j
         zoPLVIa8s9LM/+FmmK4UTLr723aUK8PxGuDjLo/JTwQEgBU53YSLB/SLklYwQLPaQ3ub
         3NgbuXz3Wu+MXbZP2+x5hfMeJOE7sJADcw+hXsjRAcRyCkHZxRXTvy0Gn9g+024SLk4v
         wlKlxjw6cBV7WWobD2y5sJ3hbMfMsFO8+BSyw1K/xMAfFl89dFa+EEM1+4xrK8fnS2FU
         itsLrjht0g0ICB25DufLHW0EYBhh3SxFj4ubDwfq+VhzTCeEZ0F6J5rjoBA2pLslpvqm
         hV8A==
X-Gm-Message-State: AFqh2kqvGkK3LoytYOFRilCwyjlDmpZV6Xp+MAPshNB0rns37iNEhntE
        DtyhA1Ym+dw5WZzaPS6Z3MiYEdSsDVD1y3CvCgM=
X-Google-Smtp-Source: AMrXdXsOMXQVo855JFYwx7Le/ie5HeFuR9Lj1rO9OfTv1h5n+p3Ia/MSFuW0zfRxBJ2RDtZUe0m0eZLm6LPK16Px+mc=
X-Received: by 2002:a67:cf0b:0:b0:3c7:cfca:ee2c with SMTP id
 y11-20020a67cf0b000000b003c7cfcaee2cmr30741vsl.16.1671973800165; Sun, 25 Dec
 2022 05:10:00 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6122:1688:0:0:0:0 with HTTP; Sun, 25 Dec 2022 05:09:59
 -0800 (PST)
Reply-To: thajxoa@gmail.com
From:   Thaj Xoa <houseinemoustapha@gmail.com>
Date:   Sun, 25 Dec 2022 13:09:59 +0000
Message-ID: <CACb7pkC_av4p7bZc7aEKQiAJQ8bq14iV4o8Vpw_+Q0dbqjWc_Q@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.3 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,UNDISC_FREEM autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
Good Day Dearest,

 I am Mrs. Thaj Xoa from Vietnam, I Have an important message I want
to tell you please reply back for more details.

Regards
Mrs. Thaj xoa
