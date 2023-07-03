Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E2F77458A2
	for <lists+devicetree@lfdr.de>; Mon,  3 Jul 2023 11:45:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230256AbjGCJpI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jul 2023 05:45:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230282AbjGCJpF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jul 2023 05:45:05 -0400
Received: from mail-yb1-xb31.google.com (mail-yb1-xb31.google.com [IPv6:2607:f8b0:4864:20::b31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6542A12E
        for <devicetree@vger.kernel.org>; Mon,  3 Jul 2023 02:45:04 -0700 (PDT)
Received: by mail-yb1-xb31.google.com with SMTP id 3f1490d57ef6-c50c797c31bso1412273276.0
        for <devicetree@vger.kernel.org>; Mon, 03 Jul 2023 02:45:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688377503; x=1690969503;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qM/BLB+gBa8a534ThgG5fQIEBAxlsaEKHMxJF7abHJc=;
        b=VCGnIQBvCimecYk8rnQU7P2Av3sSMu4YCDvPSD0MATeFxUmUcjwUlsh2smVmi05NZl
         wE7i6dtdAq0LppkOfWMk41xypw4qvcVWjgrgKw13G88o/Wfu7ollSj9c6jtjOp8en0J0
         lR8Lf35CCLnxadjxRShFuANelWzAGpKgakrxqabwYOl7BQav7pJ7IP2F/S/wCpuWu2k6
         PbiM3DbUb+Gxwu/w1XqWh1LAGeK1AZzHe9o1gbc/d0MkgNhhaN3wjn9Mz/sePe9emmHS
         H77gDirpcLr5ZM6U21W/LcO3EBL3JXSyubj/lo7W1CCc8CMo2VdNO9ZGYFkOMfLEyhHy
         4f4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688377503; x=1690969503;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qM/BLB+gBa8a534ThgG5fQIEBAxlsaEKHMxJF7abHJc=;
        b=Xjb78C99+of58Yrujc7zpAfIpmr2BgzIyO00pFC/fboqquKRuclLvzZ1PzNgGvGxd/
         u0mcAnN946Akwf9iW12/yE3VUCUBlnwMVAe8bizwoxFJznihIUX2Y7COZrmaC4eHvaYK
         DFRi1uwXxQKig6YUw8qrHXYJBaGm/GTS8bfuCKfrz0QOqAXEp4bzrAKTT9I1c3muVghi
         kFho4E+FVkv7/OEvIin3O2kBdeu5FqwJHdnDf7pumax5Awf4mzCBFtaLpE7R/YUJ3iXV
         aLYZjldV7oa9ff0qZaR5cy0tmCbjK/1KwadQnxu//u/QeHwC3LKfjFqi8QE6NF6Tm9SX
         B5vQ==
X-Gm-Message-State: ABy/qLZKFRBWhUPtYPmab1fu7kZlG1n6oeAi5fEmAntLUQk0Dzp3Mmxn
        zDAFYa3iH6j6yYtUDcQCUwChCWWdpHpmhwJnQfw=
X-Google-Smtp-Source: APBJJlHYaf9ORKPXkPw7mky4FBF/Z6R4HvLfEn6kb9bLE6nNCy4wbAJuQkIdanYm2mmVcwt3Ewf8dncrgh/8emNQ6QU=
X-Received: by 2002:a25:ac5d:0:b0:bc8:ca4:15de with SMTP id
 r29-20020a25ac5d000000b00bc80ca415demr8836688ybd.3.1688377503224; Mon, 03 Jul
 2023 02:45:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7010:a393:b0:36b:6dde:1aee with HTTP; Mon, 3 Jul 2023
 02:45:02 -0700 (PDT)
Reply-To: wormer.amos@aol.com
From:   Wormer Amos <mosesstephen120@gmail.com>
Date:   Sun, 2 Jul 2023 21:45:02 -1200
Message-ID: <CA+Jpxy=x5fHtQyNL_Mn3dimO6gf1Vzrv3qfAzbjMu0O33moFaw@mail.gmail.com>
Subject: BUSINESS IDEA..........
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.0 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,SUBJ_ALL_CAPS,T_SCC_BODY_TEXT_LINE,UNDISC_FREEM autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:b31 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [mosesstephen120[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [mosesstephen120[at]gmail.com]
        *  0.5 SUBJ_ALL_CAPS Subject is all capitals
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  2.7 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Good Day. please i want to know if you're capable for investment
project in
your country. i
need a serious partnership with good background, kindly reply
me to discuss details immediately. i will appreciate you to contact me
on this email address Thanks and awaiting your quick response,

Wormer.
