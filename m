Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C75F1790FE5
	for <lists+devicetree@lfdr.de>; Mon,  4 Sep 2023 04:06:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350845AbjIDCGy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 3 Sep 2023 22:06:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38052 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350762AbjIDCGx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 3 Sep 2023 22:06:53 -0400
Received: from mail-qt1-x832.google.com (mail-qt1-x832.google.com [IPv6:2607:f8b0:4864:20::832])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C9D410C
        for <devicetree@vger.kernel.org>; Sun,  3 Sep 2023 19:06:49 -0700 (PDT)
Received: by mail-qt1-x832.google.com with SMTP id d75a77b69052e-411f5dd7912so7648251cf.3
        for <devicetree@vger.kernel.org>; Sun, 03 Sep 2023 19:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693793208; x=1694398008; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QEzM+W+OEmpHfEeEaAySJoGydPuqhtpau7d10u77fwA=;
        b=Kf3xlvTikq/uRKIDynJTD5LfdtJtaND2aUUP7fzD3Wns94ODWeqFnYko+US1/JQtmi
         SSSLED1IJhkOnf4Hm++rmgh8+e6GkhrL+quBrcJBbOfdZWyMfE7KvAeSUdSqNUmN5CDG
         F/YpAy2aj4/QMt39tumLXHf81nDqepMmubpJ14rT2g8zpB6c8QIJ8faN+/yMaLVDQ342
         OQxAs3Vmd2hnZ0W4JxWdUyfOBlalfd2Gqm/VYVtttWq9JWnij2Y3Tr4cMi5Hf+UsBjxr
         27fLiEI8Dm1+bS/ssSbAc08tJQuQDfPWL1uRMDwiv6PlND3sfvfsfNMDcwrCTVtiZcGC
         kM1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693793208; x=1694398008;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QEzM+W+OEmpHfEeEaAySJoGydPuqhtpau7d10u77fwA=;
        b=Pz4dUOkzPAnJMLsjgsx4JDfgKGn786X9/aN9kRibIVSU7LwxssZd5odvUGLdLkrKUd
         29QuaakRXdKEobsaummGTEeuuYY5SqmD7IaccHMGfzteTrjvvT/wrwnySKxLzgBb75bt
         yaW3nY8EiZymke0TQdyA9eV/g/6EBOU8OW5hb2CMNjDUbdXPr/i1USez0ikXmP5FFakX
         UiC7WdxoyWg8rKGevAYPE8NEr8wgEPGbn87dAAmDwjYngE2LJWAKix7xwd/sbTvukJIb
         YQUY3BRnc+XGAOu0HVuhc/LuGluyLePV/jg3PtYkVPkrpk2EkyPqhzL+ZtL3hPR/cnat
         SF4w==
X-Gm-Message-State: AOJu0Yxeq6nMwBbcmTr5e/8xPkjaP14BQcdCDpvwHNPF47SqguCCTzZN
        tqnRT2INfzfIKk/JyUAuycQAYAeAX8KAMXE6E9s=
X-Google-Smtp-Source: AGHT+IHfruWQC12OZTBDVvii1fOAymwQSAxlHmaMJY41lK0KMf3ugUllLO2kVC+Px4736wr5sVgmA67A42Z9cD81DfY=
X-Received: by 2002:a05:622a:148:b0:412:f12:239f with SMTP id
 v8-20020a05622a014800b004120f12239fmr12778775qtw.5.1693793208188; Sun, 03 Sep
 2023 19:06:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:622a:1708:b0:404:12aa:90d7 with HTTP; Sun, 3 Sep 2023
 19:06:47 -0700 (PDT)
Reply-To: ava014708@gmail.com
From:   "Dr. Ava Smith" <profbencarter@gmail.com>
Date:   Mon, 4 Sep 2023 03:06:47 +0100
Message-ID: <CAOmSZDbHSwrc=ns8D0hDnNLyicgZfjYjFqThJU=rr76+wggyUQ@mail.gmail.com>
Subject: Hi
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.5 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,
        SPF_PASS,UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
Hello Dear,
how are you today? I hope you are fine
My name is Dr. Ava Smith, I Am an English and French nationality.
I will give you pictures and more details about me as soon as I hear from you
Thanks
Ava
