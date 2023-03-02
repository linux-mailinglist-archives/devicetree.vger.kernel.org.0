Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0265C6A7E10
	for <lists+devicetree@lfdr.de>; Thu,  2 Mar 2023 10:41:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229981AbjCBJle (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Mar 2023 04:41:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229944AbjCBJld (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Mar 2023 04:41:33 -0500
Received: from mail-ua1-x929.google.com (mail-ua1-x929.google.com [IPv6:2607:f8b0:4864:20::929])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AD7B39BBF
        for <devicetree@vger.kernel.org>; Thu,  2 Mar 2023 01:41:31 -0800 (PST)
Received: by mail-ua1-x929.google.com with SMTP id bx14so5737939uab.0
        for <devicetree@vger.kernel.org>; Thu, 02 Mar 2023 01:41:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677750090;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8+CEZRZEOJVmAfb07UohKPHalX/8xKQCW3mCwVUhKXY=;
        b=YvMk9gg2V3aodky0FbYh3s53idCx2+wPc4Fl1NYz0flFbxAbf88Pnq7MDzauI5XNl6
         hd1D0A1fTrNnP8htn+om0HE+2mzzNHeQGLv9v5VtD2UPeHbuUQLxTas7elcV3aymYOrs
         DC2o5GYDNApQZxdDdiaZWvd0fcZyq/x6e1OCwNBRInzWr+i8pW+50hPuSUoNOpL2Ubi3
         gZDF/ymt9S0SNTSg+AAWPn42i/GYWtxG59LInhcWmvvL6ZbfSlHAYsRnFPqCFoW0nh6d
         NFFSCiAKf/HdpSXAlMVuxDwdGtFATkcilmKFn4HqzPhIFcYRxXPZpGKRLSiC+d1Uz1UE
         gHjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677750090;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8+CEZRZEOJVmAfb07UohKPHalX/8xKQCW3mCwVUhKXY=;
        b=xgJCP6c7PUYHRMTWwK0JvXYhkODnW1VC+sap7cGbONQyIxAnJmuaS9EY5eo2D5pKbt
         dWTd2hFmFFyQz9uuZw+uOS3Ye8Ahq+sk6WFg1+UXwbtHal18XxBuUxNKjSufr8KhQDpr
         x3kfKhLfymwhEkUBzp1Fk7Y+iaKUDYmCuCBhs7MPVirL2Er9xsZiCMJU5ueBUoC77YRK
         SJkK0f8ATcDr+w72E5b4hxKMmOAY5kvzN+ghlge1q3ouxAnkU+a/vvp/Oco1bEPnn4XW
         7LlSGY48/Bw+PAnZgf5mrmSfM0YtpTAWlwe/fFdDY7ZBR3MPVnwLqOMjZjCZHVV2ytJU
         1siQ==
X-Gm-Message-State: AO0yUKWUzfcf6wjuFvxusu8zjeXZLhwOx5TRnqRYbkD7zvAZR4rxyWuB
        0jj24tYQMgek8r2ROH9QnYVE8lSj8NNrXHfr1cc=
X-Google-Smtp-Source: AK7set+vmdkbDJWbjSqEq77kr7ftOR8FYVtiB+r/I6owZj7riRIWiFbTYx4kTFMoEzov2SAU6HlZCqOKtt/P1Sj8g3w=
X-Received: by 2002:ac5:cbe2:0:b0:401:95ca:ea53 with SMTP id
 i2-20020ac5cbe2000000b0040195caea53mr5496195vkn.3.1677750090643; Thu, 02 Mar
 2023 01:41:30 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a59:706:0:b0:3aa:fda:e563 with HTTP; Thu, 2 Mar 2023
 01:41:30 -0800 (PST)
Reply-To: godwinrichard700@gmail.com
From:   Richard Godwin <wr9236251@gmail.com>
Date:   Thu, 2 Mar 2023 01:41:30 -0800
Message-ID: <CABx9BKCV-JSJ7s4=MBb6O=O4jkHedCUpUFdRNoAVG2e3MzBUrw@mail.gmail.com>
Subject: URGENT
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.1 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,UNDISC_FREEM autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:929 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5432]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [wr9236251[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [wr9236251[at]gmail.com]
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [godwinrichard700[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  3.0 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
Hello Dear Good Day,

I hope you are doing great,

I have something important to discuss with you

if you give me a listening ear.so that I can

write you in details thank you as i wait for

your reply.

Mr Richard Godwin
