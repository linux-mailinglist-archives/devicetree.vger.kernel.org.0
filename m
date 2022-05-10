Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B14A52234F
	for <lists+devicetree@lfdr.de>; Tue, 10 May 2022 20:07:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234017AbiEJSLt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 May 2022 14:11:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243661AbiEJSLn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 May 2022 14:11:43 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24A612B186
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 11:07:45 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id o69so16534806pjo.3
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 11:07:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=xVJHepNq93ePmAbCv1LHbdOWJcqWYQh8v11fr0KUdVw=;
        b=AQ5p7U+9fLzihURqQ5S7dMHNp80CvrlcNXrJH2DyqKgA/pOxsAVReWVKVGLhgJIlZS
         g2H+1r3wcIBunso2pxTBGE03g7sHDTwOdaLrPYmWcl0zgOlRLQwl109nOTE1ag9BFhu0
         BO4YbosmlH2d8GW9MNWEXAIt+3MzNnAL2Zwci3H2+SifS/AVl+7XFNcOh4z12fiR0zI6
         tsvU9rYaQ19AwQFbsBMWsaAe8q8BffQWCI3q3RVMg8W2efe5CdDm6ZLc7iqKGfweWaHJ
         8iMJy1oMzta1C67kITuInb2tlk6eAI/KObeDER4MhCMB/bCJ7IJ6uWRJ852Ry4wOFRA6
         W91w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=xVJHepNq93ePmAbCv1LHbdOWJcqWYQh8v11fr0KUdVw=;
        b=APGnJb2Uj6zn3KuqHiCUhfZBnIVQYj6Yvfm1JFZhNWTGnCFUYa3lo50uCl66WI2qyu
         Ab2PODKsnDTKJ0PSrAIaldGKHHKVsgTu2NczSx6MSYM2YUAW+N7MIkUgx8yO9beh74GT
         TFGHTX52EDFQ1rJNBBeMwfxogmF9vnqok4Lje5KPx2maN9HQzAMmV7pVN1GvlN2ioZmC
         5rfYeaWCtWlzQB5udHesf1fmdO16HOm3Mc2XDVKXIHELJQg5Bakud9b0QKfiWRB5vJlh
         6/YQk0Oy7KHZrGawtuflksHSu8Y23Oemkos6GdH4I0NQtP/b5IcGkWCSzMzD3mlFQwRp
         r2Mw==
X-Gm-Message-State: AOAM5305BgxDxObF/BD8cz9Ux4n6zKyaygAZ/TzeLWeshTLQPFr29aqd
        x5/b07TIlz6WnJvLVvzYhlIfcTUzhNNjmv++ZA4=
X-Google-Smtp-Source: ABdhPJy6+2O51LBjKb+99Cq9Wps6EmAQ4omKaELYEGQnCG8faSiz4GgcqNRQjtKeIXBSJFxlDQlsctIT4U/Sczk2cPc=
X-Received: by 2002:a17:903:41cb:b0:15e:b1f4:352f with SMTP id
 u11-20020a17090341cb00b0015eb1f4352fmr21777496ple.56.1652206064113; Tue, 10
 May 2022 11:07:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:90a:be04:0:0:0:0 with HTTP; Tue, 10 May 2022 11:07:43
 -0700 (PDT)
Reply-To: lilywilliam989@gmail.com
From:   Lily William <umarsalehtmw@gmail.com>
Date:   Tue, 10 May 2022 10:07:43 -0800
Message-ID: <CAHup-S5JkHdeWHQW==-EvFv9A2mmROLvNfACSbzBt741OWYk4A@mail.gmail.com>
Subject: Hi Dear,
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.3 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,UNDISC_FREEM autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:102f listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.4996]
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [lilywilliam989[at]gmail.com]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [umarsalehtmw[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  3.5 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
Hi Dear,

My name is Lily William, I am from the United States of America. It's my
pleasure to contact you for a new and special friendship. I will be glad to
see your reply so we can get to know each other better.

Yours
Lily
