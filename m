Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 702DA5873C8
	for <lists+devicetree@lfdr.de>; Tue,  2 Aug 2022 00:12:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235038AbiHAWMF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Aug 2022 18:12:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232334AbiHAWMF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Aug 2022 18:12:05 -0400
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com [IPv6:2607:f8b0:4864:20::72f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71FD41EB
        for <devicetree@vger.kernel.org>; Mon,  1 Aug 2022 15:12:04 -0700 (PDT)
Received: by mail-qk1-x72f.google.com with SMTP id m7so9452398qkk.6
        for <devicetree@vger.kernel.org>; Mon, 01 Aug 2022 15:12:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc;
        bh=ej3T27wdcOl5hgxFKEEvscpLUDARFbq7IX1O4+1Fbq8=;
        b=pyHkAagnz6uOTiXomBVDfCVQ00MvmkGdTref1W4T8BOOfycL3xJTY2sO6rgZ6ZKle8
         ZV6PB5VBF8riggBgJHQF6sY0JHf50RWrFLVXyasYZpViBt71LPXfkYwzFTdYajBQSkVW
         LCbecglWRJU9P3LgCn/qeJx4fIXo1X+7MUxdPe/M6pp4bpfshHUy50rqvJa1bwVwenQ7
         cnO+n06DL19JZGKGd6/syCLIWyzD1q9OGKR28mzD+fTQdHeVj7I37/RceYWggJ1UDfNw
         LjRPZxPtmNngsmLfFU4iR1v7JY3hG7CnkeavZAOEtFc/Ow4KahA+VGPeFCmajZ+ci3V4
         SDNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc;
        bh=ej3T27wdcOl5hgxFKEEvscpLUDARFbq7IX1O4+1Fbq8=;
        b=mprXZCBIuV0O32VPYzouxEbLkU3S6KM86i2/imPpoNNQ51K85IV/R4amsjYh2oPgZ+
         jiwiL2104gJLnlwpu0SZ9dWmoJ4Ef4nC2vhpKvT1jTZCFwy808zOcyYWE+bQPxGixXdz
         rjy2yGZWDipuxN/olJZJvANjLYxxrW8PMx4cSbq0KRefLeMsoGrlouNpUn39yZ0VnPXU
         PxTGkkICnWNdbQKcDY+ighcogVTxLXrLIJTwsgM0yrL3uBHZW87pFqln28O9MLtC5yi4
         ND/ZPhAEZLjLJpOJ5PEkFVA3kp7L97LxwLxx/1ZY9D2MZ04SjMIJZ8/5FC8Z536TLTKx
         dOAw==
X-Gm-Message-State: AJIora/JuMKzVdHN2Te+9HF2ATOkS7NvRLydtI35pqIWFrykP4J7grgx
        ZXbs6i5cWgUD38OuLAoF+Zfj5LLjZzPT8yxnrVE=
X-Google-Smtp-Source: AGRyM1u0B/1NAnKVoKnNkQqxCJ9qqe8mF7TxRQ07tCJw25fry3ihp8XD5rn8DiW+QkOpdUY1XcWunmKoM7yHuNjlnns=
X-Received: by 2002:a05:620a:298a:b0:6b5:dae9:a569 with SMTP id
 r10-20020a05620a298a00b006b5dae9a569mr13096129qkp.197.1659391923323; Mon, 01
 Aug 2022 15:12:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6200:3212:b0:43d:58af:6f4a with HTTP; Mon, 1 Aug 2022
 15:12:02 -0700 (PDT)
Reply-To: te463602@gmail.com
From:   "Dr. Irene Lam" <dmitrybogdanv07@gmail.com>
Date:   Mon, 1 Aug 2022 15:12:02 -0700
Message-ID: <CAPi14yJp+yVXPtAQQ3FeEuuvB8C_kJoRiUw6yUic=wMgH88wfQ@mail.gmail.com>
Subject: Greetings,
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.2 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,UNDISC_FREEM autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:72f listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [te463602[at]gmail.com]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [dmitrybogdanv07[at]gmail.com]
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [dmitrybogdanv07[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        *  3.1 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
Hello,
We the Board Directors believe you are in good health, doing great and
with the hope that this mail will meet you in good condition, We are
privileged and delighted to reach you via email" And we are urgently
waiting to hear from you. and again your number is not connecting.

Sincerely,
Prof. Chin Guang
