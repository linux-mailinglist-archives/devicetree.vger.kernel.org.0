Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BFAEA69094A
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 13:51:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229780AbjBIMvx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 07:51:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229589AbjBIMvw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 07:51:52 -0500
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com [IPv6:2a00:1450:4864:20::241])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34D741D92A
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 04:51:51 -0800 (PST)
Received: by mail-lj1-x241.google.com with SMTP id h4so1931327lja.2
        for <devicetree@vger.kernel.org>; Thu, 09 Feb 2023 04:51:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iRYps+Ma2Qqyq4fQTjr9b3fPUVRBD6fsZfpuH1A4tX8=;
        b=XGvH++3FCk8W6dx2NRDYnbaEoBBeofbx5VgO0Gu8DITu5Jmmzj7c+ExPBXtarLXiju
         kR+Svl6ZeOVtP0hhV5YLymJg0s0heXv4HQtgnkZfMMT0lEyQMEQ4qsm/tckVh32Vbm/T
         7CC43LQPkxg4UQgUB6WGlZcc1+cGReHx5t6qBlSivY7E6pJ+V8FTyywwrKXI9GrxkYc3
         6iaOf0wZ6ZsG5IkBbvQVwDuogdg8vLz+ITz3fS2UdE10oshfMzHUSlUOIx/Daq1HPyfX
         iQJ882tLXxf85Vi7IDH/ztS1WJYHINQCNxwpZ/jlWDWmiYvxc9tKA5vesBe7X9eHwRvz
         /EqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iRYps+Ma2Qqyq4fQTjr9b3fPUVRBD6fsZfpuH1A4tX8=;
        b=r+0ClL4PqN8aSYo4USIaauFr9aO+e19Hr8tvJtx11AFXvQbsByzbydmHo7Q1c2o5wu
         V/MA67ycrk0sM2vwGA66Qp8ACeWO49xapwDnqxOrhOb2A8qYzgnyn18AeLKnpN4QxUvq
         kBsqKV8eq3RVJ9IEPhcyiaqTA7Q04AOoDit+8+4I1PD4xQ1ttlE6DyGhSQ8Dh3oh2G3R
         6CF/zQruOCebKvAmBsPpqFFYOTYg7uQBjbtyh4yGgIKDk/08FgIyhszAf3SugUfOiqUn
         CDxriHo7S754nxLwYN9G+dCDFyZ4MhWwgj/+9R2sD4eDsvp2Dm7g2tVT0vjMhl/jzl+P
         MjTQ==
X-Gm-Message-State: AO0yUKUTuOTczOvyeW6Fk+AyMLI/TGLcfu1iJoVJ6HeTnD7V8NzJabFJ
        yC2VVRW3rqJ/rzMzP1vQN2h744paJ0WTt/wkRwI=
X-Google-Smtp-Source: AK7set/XE1SNap4g0Dj2Hjnd2tly0EI3O+pxqsXwSemk4UFkVYZETNuYGvVg/9nGfDjb1YYz+vE2v0q08lPreSr5Tbo=
X-Received: by 2002:a2e:141c:0:b0:293:2986:4981 with SMTP id
 u28-20020a2e141c000000b0029329864981mr1018331ljd.99.1675947109468; Thu, 09
 Feb 2023 04:51:49 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a2e:b5a1:0:0:0:0:0 with HTTP; Thu, 9 Feb 2023 04:51:48 -0800 (PST)
Reply-To: loanoffer2323@gmail.com
From:   Loan Offer <jp948888@gmail.com>
Date:   Thu, 9 Feb 2023 04:51:48 -0800
Message-ID: <CAG54AJeZvvrnhV8ML1ZJqs_kmEyLMVg4xcVOaXbfA0ZWu5wexQ@mail.gmail.com>
Subject: LOAN ORFER
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.5 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,SUBJ_ALL_CAPS,UNDISC_FREEM
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2a00:1450:4864:20:0:0:0:241 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5503]
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [loanoffer2323[at]gmail.com]
        *  0.5 SUBJ_ALL_CAPS Subject is all capitals
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [jp948888[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [jp948888[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        *  2.9 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
LOAN OFFER.....


                           I need a loan to start up a business, pay
up debt, we  gives out loan at 2% interest rate and gives out any
amount requested. Contact us now via this email below ............
loanoffer2323@gmail.com

 Whatsapp number +393297834184...
