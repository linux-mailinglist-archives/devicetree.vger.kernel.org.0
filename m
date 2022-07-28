Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B24A1583CDA
	for <lists+devicetree@lfdr.de>; Thu, 28 Jul 2022 13:07:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235780AbiG1LHr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Jul 2022 07:07:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235111AbiG1LHq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Jul 2022 07:07:46 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F20DF1DA79
        for <devicetree@vger.kernel.org>; Thu, 28 Jul 2022 04:07:45 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id e8-20020a17090a280800b001f2fef7886eso1788621pjd.3
        for <devicetree@vger.kernel.org>; Thu, 28 Jul 2022 04:07:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=p9eXFPYaWoUQYd93GZHfKWGzwlV1gqge90LRrpP+sWM=;
        b=LfeOKxjZp7LPbfhP6THJN4EV+099x3VAvOaOAYmYjJZjjApzBNqzjEKtsF2ihqsR3o
         c42V9q1GZrI3WP30COuoIPaPqiR3yW0Q/iXblSb6br88OScgBEENYICnqbzNVHEkxrhT
         G5PhukGCWBKNIC7sWWowFUEOM3lEoIlYvCLITI+kDx1uEJgIYbfye6ASX4Bo3POzAYtn
         NLEajSGbiiLyKGVaM8tl4aVtgxdBEqJezIxiQok789rH/lUY2GLB2XHgIR7cIZOJ96KO
         TQa/YMCOaexMQ3M06xa+Hd2wIQKWjDtrksYNqYMmSwywwbq7gkmbM2ERBp9RVpu4r0VE
         ZRkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=p9eXFPYaWoUQYd93GZHfKWGzwlV1gqge90LRrpP+sWM=;
        b=bKIIJ1kpQSeSZ00j8iW5Pi+R2IUHGHKeo1bzEyuZmczro+Vhgp6CQIccoNrCujeWPF
         kJQOkVz16frcN374nNh9dtdB9cVLCAspzzkpl06Fz+xPA7WmF3PAd62S+6iOa2btB4K5
         0xemNDr2V2nVkKoxh/xhJw/5Si73/8yNKPcLG2JSmqxQOKwCH1o6MEf7NmBzu/NpndLq
         vurPIUgb2Q8P2TRJsWw0aLheop+hjJnDQV8rScAm4T9+TJ0h8vojHeRztpylbvq/ssGp
         nmDM+O/mQU/390Q7WYGezQ7EBzwUhdf8gXJrjlvQqx1kkYCmlIep9PfmZ5xuuoKIdX6m
         tVqw==
X-Gm-Message-State: AJIora9JxICYcPPdyv9snpncdU8z/4yhDkGPMOtb29LRzVvebFo4Hbcp
        SBEzpuiLxYnmjXIdlxsg83SKZALtI4aCBOEZLHg=
X-Google-Smtp-Source: AGRyM1tU905G6T0oSjtRT6wbjGEehqYPO/T1VIMTNWG2ADGu+PM9W8PpDEuSa/0ZpPa/R/0qpH6OyT6if2dLhyYHgLs=
X-Received: by 2002:a17:902:ecc2:b0:16d:66eb:bb65 with SMTP id
 a2-20020a170902ecc200b0016d66ebbb65mr22084700plh.97.1659006465000; Thu, 28
 Jul 2022 04:07:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7022:41a6:b0:42:d38c:ed05 with HTTP; Thu, 28 Jul 2022
 04:07:44 -0700 (PDT)
Reply-To: lindacliford05@yahoo.com
From:   limda clifford <limdaclifford65@gmail.com>
Date:   Thu, 28 Jul 2022 08:07:44 -0300
Message-ID: <CAGUtzAu3T=VMQbM423pHsa+UR3Df5x2gBg=tApvzGX+A7_xkHw@mail.gmail.com>
Subject: WITH DUE RESPECT
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.7 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,SUBJ_ALL_CAPS,UNDISC_FREEM
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:102c listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [limdaclifford65[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.5 SUBJ_ALL_CAPS Subject is all capitals
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [lindacliford05[at]yahoo.com]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [limdaclifford65[at]gmail.com]
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  3.1 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

 Drear Love One,

  Good day dear love one my name is miss Lnda Cliford  from cote
d'ivoire please i need your help for fund transfer of 2,500 000 us
dollars  if you  are
willing please get back to me  for  more information thanks and have a
good day,
Waiting to hear from you thanks,

your s Linda Clifford
Regards
