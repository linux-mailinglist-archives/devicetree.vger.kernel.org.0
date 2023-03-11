Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2FDD46B5D30
	for <lists+devicetree@lfdr.de>; Sat, 11 Mar 2023 16:09:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229469AbjCKPJH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 11 Mar 2023 10:09:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230135AbjCKPJF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 11 Mar 2023 10:09:05 -0500
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com [IPv6:2607:f8b0:4864:20::b30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C6AA5F53E
        for <devicetree@vger.kernel.org>; Sat, 11 Mar 2023 07:09:04 -0800 (PST)
Received: by mail-yb1-xb30.google.com with SMTP id d84so460395ybb.4
        for <devicetree@vger.kernel.org>; Sat, 11 Mar 2023 07:09:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678547343;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qj8nrG0sL8loOIOhZdmt6f4M2skgayD9pumOqV207G8=;
        b=EDUvtVfiFn3UQfZI4StFyLdiNBN2v77Gt9N9eLcpJQGT/sPhRA1XlAXRTOAu9t5w9k
         w3NRj8SEzMHHxHRDqi69d0AGT5lwwsTmS7GP3h1peyXmCD5IZaIh4ZSctQKmDsDotEb1
         6eQWAnfJD5qhndc8q/n1rzvL/RyDBbvd18Rlz4/DKb8I5u5qn7ljnjfB+8b44ZcFy4EE
         +0XtD3ahomlhK9smXEnaMqYB5OUOq4Opu2zx8nfwXxbO10U8F2rt5XNEFjbphLDsl7p2
         2TGjk5fm+OeBBfo1siyQop59mJOdD6VRtvdS9pciFXBg7QmKROLqAz+ypDRhMd3C6Wqf
         V20A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678547343;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Qj8nrG0sL8loOIOhZdmt6f4M2skgayD9pumOqV207G8=;
        b=yJ4KdbAanaem0E+3LuIP5VsxhGbAVvQLaPStDL58UhYtAofr3qhy9NuiWijSFsKXq1
         wh4PdBMQoECdMK9diIKc/WOyLTBsTBrp5G+N/SATfjjENpAxKawZUbjV1Tc7J3DZIUm2
         bmcjQlsuCUzCFD/a/3XAIivJDBOof6WMQnRfiyNvbyGWAQtuVQfTnJ7LIG/BcK3lCBvo
         oamCGrPhIXtzwe/7GFCXygZZvtYnsupk1QVOjAqOGdKGp/XLiXdgbKWTSDhbHOA0KjKv
         fyS14HpgM//Iu2Q3pIzaSoDxWmAIAY5EttrYmOuJMQmDGTn0e9Y3Yx35A3cMFEswugpC
         bNQw==
X-Gm-Message-State: AO0yUKVGJUoFmQ2PGvNmvYVzUVHMRmjPiXhfuMXlOK5/VshlzJn20Pqe
        XVgbULFejGzZqOZVhq4qpO12DzDItpuZlQBAHvk=
X-Google-Smtp-Source: AK7set+p+o1t5rRmgvzKbAZ148gFU4AMJRgg+xG6pTDWQ26moK/v3ppxdVHtRCz1m7sfsLUkVa76Ie+YEtJLN45jIFI=
X-Received: by 2002:a05:6902:d2:b0:a8f:a6cc:9657 with SMTP id
 i18-20020a05690200d200b00a8fa6cc9657mr14303163ybs.7.1678547343397; Sat, 11
 Mar 2023 07:09:03 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7010:170e:b0:33a:3cd3:1151 with HTTP; Sat, 11 Mar 2023
 07:09:02 -0800 (PST)
Reply-To: wormer.amos@aol.com
From:   Wormer Amos <fatimamuhammad5689@gmail.com>
Date:   Sat, 11 Mar 2023 16:09:02 +0100
Message-ID: <CA+QAR6W93S0MxEDGKFZkUE3=+=-iVDqY_M7FMiGcSmdCeZ5kOg@mail.gmail.com>
Subject: VERY IMPORTANT PLEASE
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.2 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,SUBJ_ALL_CAPS,UNDISC_FREEM autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:b30 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5361]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [fatimamuhammad5689[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.5 SUBJ_ALL_CAPS Subject is all capitals
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [fatimamuhammad5689[at]gmail.com]
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  2.9 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Please are you capable for investment in your country. i
need serious investment project with good background, kindly connect
me to discuss details immediately. i will appreciate you to contact me
on this email address Thanks and awaiting your quick response yours
Amos
