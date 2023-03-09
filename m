Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D65976B1BC7
	for <lists+devicetree@lfdr.de>; Thu,  9 Mar 2023 07:47:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229476AbjCIGrY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Mar 2023 01:47:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230151AbjCIGrW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Mar 2023 01:47:22 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A770DDAB82
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 22:47:17 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id l1so798861wry.12
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 22:47:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678344436;
        h=to:subject:message-id:date:from:sender:reply-to:mime-version:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2EunEBKVYoEoq69imBRqQomGfF0cWJoxl6o7vJ+JiVg=;
        b=cxI9dZ7q3ILp+GT5eb4NuzEjDY1SfCtw+wNL68Z3awDaV9l4EYqmI9xmclTko6mEKc
         FAuM7VSJ9n0PSNIpncslQUK+bgFlIf4M7tPNsJ6W0lKCVl82BooLdcXBmjemQppMFyFL
         zIoTydinnkfWYwEmHK1WHm3rflxZ79uhFEEW2mxHJELO3XZ3f4yBoyttCi9teWx1+Tib
         /2MMJaKeypisIbLmHzE5TNFm+nLsGUtCaUZ2xNi+Q9uDwLml5loQx7Xa3a85K6hwFEs/
         HXt9Xn94UdjE3ZSzaJep8tfaqs6zvONFIqkpeSzSntdK1zK8yjVwUxlOuhiRdzKRWswb
         NawQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678344436;
        h=to:subject:message-id:date:from:sender:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2EunEBKVYoEoq69imBRqQomGfF0cWJoxl6o7vJ+JiVg=;
        b=AyzSoFxhR9JIrDerMvz8y4wX4ceMUZsGXFtRzG+asAq/He2uNZ6dGMzeYeY+HSTR/8
         d8zqEmFALDufjYC9UIs1sIv+xuXzgjKsBpHEVNsTeHFUAR7Lijlt9a9Ntp9y8gNuXiI/
         p/u+lzjEUyhApnOwpAR7foGe6kj46N3qAt9pPtkENvQZYE4xfiTfDYhxe3ChDY5Izs6d
         3Nppoz4XHM914rGr5aItCxyWgRKZZenyzOSO6ZtLuUdCsKbMdk2kQO9J1tRK1pOhJ+Vq
         8Eo8vVS47roo6qlQ5JDt4i1yizkRjdYol3Ihhnxyv0n7H69phRY6cfrhucqd1Dy0wY07
         7UYA==
X-Gm-Message-State: AO0yUKX6EcnpY2eb7FFFwScPW+3TCA/baI3T+tVDD14h5XDiMC3KxsSm
        34L1Vrv3OboL2tlsbG17CgGi0noyMEd97E1FJm4=
X-Google-Smtp-Source: AK7set9JPo6g0nS5turue3Uxn7pwrecIgQ2DgKjVVfyH/8daTNUcJu0Dqekreei0k7Du3lMKXOh5i9roqiA0HIzF7vM=
X-Received: by 2002:a5d:4d8a:0:b0:2c7:3bed:481d with SMTP id
 b10-20020a5d4d8a000000b002c73bed481dmr4544357wru.9.1678344436086; Wed, 08 Mar
 2023 22:47:16 -0800 (PST)
MIME-Version: 1.0
Reply-To: vandekujohmaria@outlook.com
Sender: zaaxzaa01@gmail.com
Received: by 2002:adf:ffce:0:b0:2be:4dbb:22e8 with HTTP; Wed, 8 Mar 2023
 22:47:15 -0800 (PST)
From:   Gerhardus Maria <vandekujohmaria@gmail.com>
Date:   Thu, 9 Mar 2023 06:47:15 +0000
X-Google-Sender-Auth: 8RNDxLwxlKKpYtOl47KqU-h2QB4
Message-ID: <CAE9_Xbf7TPsw1rxZPDXeMv-DWyeqpDU-D9-Qkf1oF=Zt8PB0=g@mail.gmail.com>
Subject: Hello
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.8 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Dear

How are you doing?I'm van der kuil Johannes gerhardus Maria. I am a
lawyer from the Netherlands who reside in Belgium and I am working on
the donation file of my client, Mr. Bartos Pierre Nationality of
Belgium.  I would like to know if you will accept my
client's donation Mr. Bartos Pierre?

Waiting to hear from you soon
