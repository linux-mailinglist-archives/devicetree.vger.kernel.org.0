Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0384B5AA701
	for <lists+devicetree@lfdr.de>; Fri,  2 Sep 2022 06:32:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231757AbiIBEce (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Sep 2022 00:32:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229602AbiIBEcd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Sep 2022 00:32:33 -0400
Received: from mail-oa1-x29.google.com (mail-oa1-x29.google.com [IPv6:2001:4860:4864:20::29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73553A9C08
        for <devicetree@vger.kernel.org>; Thu,  1 Sep 2022 21:32:32 -0700 (PDT)
Received: by mail-oa1-x29.google.com with SMTP id 586e51a60fabf-11ee4649dfcso2204800fac.1
        for <devicetree@vger.kernel.org>; Thu, 01 Sep 2022 21:32:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:sender:mime-version:from:to:cc
         :subject:date;
        bh=mud/A7o+XnMJWXVDwX9SMwmrF8mM8lY9Pgq0TzB72jE=;
        b=QMZ4cLZdhPeBirXa4bttSlWcXKejHmE16xozbab4YvbfUawALPAwBKGbeAeCPfd6Yf
         jcJZkf2gc2GsOzq2evmyaXEYsBzEbVvGqyQ9ehqp+OZ+TU7xKnqUudBEVWhAcDXmf9PA
         XdJ2Pb+fletfxJeHnbEMrDc/hIio3tikqndMAoCHlw7kDrMxAOYiuoxduYvYjOBefrCv
         nuD3arwjvHVY0B7Lrx0BNDqf3kOpGK2BNBz0mhD9IVMahXk9n5ee4zY0tUUdg0he/Iqg
         wtjVxliTo/uUjFrRTHWezR1pt449MFqlYyKRP4cqfKm1aiXH0FydCKTBFi+3YW4H3JYH
         Mirg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:sender:mime-version
         :x-gm-message-state:from:to:cc:subject:date;
        bh=mud/A7o+XnMJWXVDwX9SMwmrF8mM8lY9Pgq0TzB72jE=;
        b=LvldDbSAw/khSnC0VfuQiC9IcquIeyWIa8fSp1dAvdOp/2VPz7SNLqOxCsL6ZJNNeE
         Yg3vIPlEZHz05JmSlmpAUfdLOkcZFWf3diTIH1vz6yQcqmL4/bHR4gYb8My+baDwYQYF
         nSWUdRYcoRAtS/6Jrn51OQuiKDSRkDp8abnTrOvhpZVfM3PP3WcJ7ejg+oKOMiJlNEUL
         MHpXyI1UVAVmJWYkJCjdip3bW8yK/3Zh0a0GMq2YodXuPaPam38YAXWsvvKG1gEyzhyM
         MzQGLqrhoDCrpXxx1smnmM9hipy7z/R8hGT6/9QMLXDzFAREiZRdyEoJbcfqJdhQUCdV
         uVjQ==
X-Gm-Message-State: ACgBeo2qdsBphkgzfeO1vdUkj9TA1sk1B0XlyK3sPCVJJnZqMbcr3Cd8
        pLBIG78EcRN0jgK4CmKNJ0aiMZO4s3Zk6IJxzzM=
X-Google-Smtp-Source: AA6agR7X9c6g4lJ9F4R+6MnEoJm+KkV0NESz9pIFK7SF+ZMP9hzg6cg+roVpuCByF80pq1IF7lFnp2e7yUo3Y5qk7ig=
X-Received: by 2002:a05:6871:722:b0:11f:36ab:2551 with SMTP id
 f34-20020a056871072200b0011f36ab2551mr1290712oap.237.1662093151894; Thu, 01
 Sep 2022 21:32:31 -0700 (PDT)
MIME-Version: 1.0
Sender: romeoadja288@gmail.com
Received: by 2002:a05:6820:1607:0:0:0:0 with HTTP; Thu, 1 Sep 2022 21:32:31
 -0700 (PDT)
From:   Kayla Manthey <sgtkaylamanthey612@gmail.com>
Date:   Fri, 2 Sep 2022 04:32:31 +0000
X-Google-Sender-Auth: StTAB8XEjiBTvBJvsyuTEdwa17s
Message-ID: <CALPkDDjRNqmJypCodJGf+qYW1aggzjD0ttY_qMogYWE=A+m_Bw@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=0.8 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Pozdrav, verujem da si dobro. provjerite i odgovorite na moje
prethodne e-poruke.
