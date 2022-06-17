Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B27054FC32
	for <lists+devicetree@lfdr.de>; Fri, 17 Jun 2022 19:27:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235959AbiFQR1W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Jun 2022 13:27:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234143AbiFQR1V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Jun 2022 13:27:21 -0400
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com [IPv6:2607:f8b0:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8C2F20F70
        for <devicetree@vger.kernel.org>; Fri, 17 Jun 2022 10:27:19 -0700 (PDT)
Received: by mail-pg1-x52f.google.com with SMTP id e63so3091742pgc.5
        for <devicetree@vger.kernel.org>; Fri, 17 Jun 2022 10:27:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=2NTi/QegNnVCEQq7rooYSxMGN049ehSK5P7btoT2DLE=;
        b=kGgaOVklbyzgOAH83hnI9hV0dEhP5gJNsLCEw3iDDfXuJG2H3eL1bvHRRnw+xynZZc
         ZfzUc/2079U7t9aL4eeFQm22AgCFblL9dv8cPY+7nRfXwOr6txz8IvXT3K/h9hwdrhIM
         ys9dNc2dR85pPC0G6TNeQy+CYhv47cRlxyjww7oGuxGoiRCwQIwtJ0r6cdofuo1Sha9p
         UIDzZiB1cJbIoluvy5v8JBpfTC15+MAFv/07i5CNmn4BJc0XOr7uibO0gC1qW4e9b5V1
         ns4q+0b9uCdSOTsz3e5FZ9BY5O33eESn+BgHp0VRCkDn/+ARlUgBKWXEJD+cOY9aCEG+
         HfDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=2NTi/QegNnVCEQq7rooYSxMGN049ehSK5P7btoT2DLE=;
        b=CneHBZKxucd0rnaXVnTaMFPCKZfQTvJCAE1zgQKI07Cxx/FP+g5gy8UYGZip/gRG5+
         6tEmB2vbPlvX/UYOPMic8yJ66gfWwS7ludb9EJIwxCy61TyWayP1moaTDT6OCIjG84RE
         QbKMZ7c63qgZ2WwhvZOG9eI59eaOXuECQbcw3dbRZ03SWRJbgljOQrtl/4aIPXqeaL5v
         jEplrkhriTMd9a3b5Qqq4NgnkpNyjA3DoGFLkqroTWEoFl0skT8j8goi5zM63lYnSSkY
         M/RUe7xMRijoZjJWui4cVBkwjpZKXCkUT6bJqywMeJcvAmFfFVSrNLQuN0CkQr/LX8yq
         lVUQ==
X-Gm-Message-State: AJIora+StJK7bjjhb1IrEAK34ncbTV5PmphopZGlhmathVdQi1OdkbfH
        MhizESEN/qm1Fnqpxb0wT8gPAvSU2wLrSnJwyGZpjeiAAyc=
X-Google-Smtp-Source: AGRyM1uR2zmAGoVzKXZ3zM+/Ze6ngsGAKTlLQTZfyk8qZVH1wsJAtybouVQb0zPSNF/RTQZVJmhO1QCmsiHnWTf+LAM=
X-Received: by 2002:a63:4447:0:b0:3fc:d3d1:cea9 with SMTP id
 t7-20020a634447000000b003fcd3d1cea9mr9722549pgk.269.1655486839043; Fri, 17
 Jun 2022 10:27:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7301:1e03:b0:66:f315:3264 with HTTP; Fri, 17 Jun 2022
 10:27:18 -0700 (PDT)
Reply-To: werinammawussi@gmail.com
From:   Werinam Mawussi <christophermulei2@gmail.com>
Date:   Fri, 17 Jun 2022 19:27:18 +0200
Message-ID: <CAAx=c--cBWLivJCxhn7JdR=QF1GZKyBzouuJYj0VWGzQS9i2vg@mail.gmail.com>
Subject: Important Notification
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=6.8 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,LOTS_OF_MONEY,MONEY_FREEMAIL_REPTO,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_FREEM,UNDISC_MONEY autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:52f listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [christophermulei2[at]gmail.com]
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [christophermulei2[at]gmail.com]
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  0.0 LOTS_OF_MONEY Huge... sums of money
        *  2.2 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  2.0 MONEY_FREEMAIL_REPTO Lots of money from someone using free
        *      email?
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
        *  0.8 UNDISC_MONEY Undisclosed recipients + money/fraud signs
X-Spam-Level: ******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I am bringing this notice to your attention in respect of the death of
a client of mine that has the same surname with you and his fund
valued at $19.9M to be paid to you.contact me at
werinammawussi@gmail.com for more details.

Yours Sincerely,
Werinam Mawussi,
Attorney At Law.
