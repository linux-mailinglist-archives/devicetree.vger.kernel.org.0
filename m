Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC0F64C2207
	for <lists+devicetree@lfdr.de>; Thu, 24 Feb 2022 04:09:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229479AbiBXDJB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Feb 2022 22:09:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229614AbiBXDJA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Feb 2022 22:09:00 -0500
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1195192E1E
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 19:08:31 -0800 (PST)
Received: by mail-yb1-xb2c.google.com with SMTP id d21so1192470yba.11
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 19:08:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=/rL+TycpMQLfB5P4Zn9xgGfUWg8yPCNTwrE46ZNldMM=;
        b=RSJKmgRdZ0OD371c53jzHTVD2MwwoJYhHbVBBwouavYAcKuSv8c+rFTsTqakrKyFzP
         15tKIFG9uIph+SczMz8AYh4iVaubLmyMKXCsZRKrqFROEfeizGrRlM/ejgkIrfsbLpBV
         pp6n62CXhYvsOhu7xBf2Csbip1fNDiretUqqg2tr+fYzkYSiyVOZgbyZqdKPqSvNDhol
         +8PtILL293SsTRbOGH66R+auqbCwMS89OIAHVWauIWE7vSxFjQIukD3g6d5FwymH13AT
         8AfT7bywga1zU/JjpzxwIwhEqtTPpYlvlgZdH+LH8twO0RziZufIZD0HfUg7fk0L7Ncp
         vyKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=/rL+TycpMQLfB5P4Zn9xgGfUWg8yPCNTwrE46ZNldMM=;
        b=Ahk1dp2WoVX8CwBmYpKpONwZJXA2YCah5CxYTXFoNdHW1V4Z5/ix12WJY7EM4z5h/p
         AoX+Z6EdowEOX3Pl1INIA1a8Go96vWyZl5bhl9TTbmQvFd6OpjAmut/ldr7j4K/ergq8
         5ql1C1r04ExdBige9emzs4Fo//BxSdwJL57KipsCE01mgfpq1dPjYzi9sOqye9aTzkvF
         UMlOM/nYh7Kj3eQgvDs1VxT96OGZRlfwHLfV6zSc96t+qofMQZrGmVPO7t3a1tXrcNZ2
         pmWxzqlAMaFAmqblJFt1oF4wGwvN9mVKbnJqCnA4v7mAL2vTga1vXvQ6RkJwUafWgbSO
         d1SA==
X-Gm-Message-State: AOAM533CY5hHwppH8zSb9uXCpmvzFPnWSGqUrgUr7Ygok/v/049a3dr+
        xcfFTmdk/o/Zy+OtTRk0ZbuxD5n7AEA09aYvWOU=
X-Google-Smtp-Source: ABdhPJzV7jR7NFU7E7SXk9zdVhlV9o86Um1Vp9agrRpuGAoU0a+XtgPY8lLOgUp1y5Ave6VGeAOAm+ur4/gNiP28aIU=
X-Received: by 2002:a25:b991:0:b0:610:bf4e:1b33 with SMTP id
 r17-20020a25b991000000b00610bf4e1b33mr718913ybg.352.1645672111128; Wed, 23
 Feb 2022 19:08:31 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7010:738a:b0:210:6fe6:62e1 with HTTP; Wed, 23 Feb 2022
 19:08:30 -0800 (PST)
Reply-To: dravasmith27@gmail.com
From:   Dr Ava Smith <gracebanneth@gmail.com>
Date:   Wed, 23 Feb 2022 19:08:30 -0800
Message-ID: <CABo=7A18D0uuaB1kiodAaGNy61itjOnRhRWudgABf=R_h_ZqzQ@mail.gmail.com>
Subject: GREETINGS FROM DR AVA SMITH
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.0 required=5.0 tests=BAYES_20,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        SUBJ_ALL_CAPS,T_SCC_BODY_TEXT_LINE,UNDISC_FREEM autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:b2c listed in]
        [list.dnswl.org]
        * -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
        *      [score: 0.0600]
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [dravasmith27[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [gracebanneth[at]gmail.com]
        *  0.5 SUBJ_ALL_CAPS Subject is all capitals
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Hello Dear,
how are you today?hope you are fine
My name is Dr Ava Smith ,Am an English and French nationalities.
I will give you pictures and more details about me as soon as i hear from you
Thanks
Ava
