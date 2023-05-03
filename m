Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 40DC06F6055
	for <lists+devicetree@lfdr.de>; Wed,  3 May 2023 22:56:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229604AbjECU44 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 May 2023 16:56:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229449AbjECU4z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 May 2023 16:56:55 -0400
Received: from mail-qk1-x729.google.com (mail-qk1-x729.google.com [IPv6:2607:f8b0:4864:20::729])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6106F83DD
        for <devicetree@vger.kernel.org>; Wed,  3 May 2023 13:56:54 -0700 (PDT)
Received: by mail-qk1-x729.google.com with SMTP id af79cd13be357-74cebbb7bc5so514383185a.3
        for <devicetree@vger.kernel.org>; Wed, 03 May 2023 13:56:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683147413; x=1685739413;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aEWlsfNSaHivuvKCXmCc098S+ABIR70t/k+CsvM7IN8=;
        b=a7fg5/BoB7a3KQuQZ7966CSNLT5dxUJ59GZ+AgOGXnQJM+4AFdTV5V/7xEVuWFHdyB
         uVtM0F75oINvEpVWGeFmXzVGZGacXnQdCQxxWBd3h394YeGK+J9zdqWWy//uvpnpnYaR
         3FEsxiqNza0svxQLv3QrkvdEnIVMxzVu92M9JW4xZImhxjk3mTDYdF4DNhrmdakkLh8n
         gVlCr40YMQOFBwVR4VXTxQp89C6HSGvfkKk7V06/vwCiUxSm9MT5yovF3vjNKHXUEI+k
         bZD9+5Gp93E9HwbT9fKax+00hcl1cZdurAq//a5wyemKc38x3DBVHdMDI1csqu3doCjJ
         wzGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683147413; x=1685739413;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aEWlsfNSaHivuvKCXmCc098S+ABIR70t/k+CsvM7IN8=;
        b=Rx35JPqX+uBecAhqsXMLtANaKT1XmuOktzq+31RSf55OR1d/jZPEa5i/W0nnzMSGaY
         48JGzlvBMvLXIj3IzXJYmhIgXhpcU+CuvlNcwqBLc/B20EMY1bYZ0KmS+szXOAkTThjq
         Cvssk7nOOHXobJ2xcXfPsvHI2WfbqHL0XqnND54sFQ1lMvmsCTO4x8ft7iMHMOs2QyiH
         l4cDFjUoeErPziG2NEd5NfaG4Vai4raP8cDiHtJLaQhfxHj47mfOJxqfw3mceuUI2J3K
         XwYLC8u/hr+9NN7poG0o7zq08DuKDznsnpyX5qYxlwcqXVRWq+GL0cK8gYs1aD7C4LVp
         v6mg==
X-Gm-Message-State: AC+VfDzlvHTtTjKPjfmpkACxKJkSvMs/V7yTTR2nmLj1Ki6R1a3Bl/mB
        i6uLy7zfNwnyc/m/Qf36aoXoO3p07EEEW7NNWhsLsx1H
X-Google-Smtp-Source: ACHHUZ6Jux3UvISsNTTt/3Zy1Kp7KvDYVlv1qxSO8oLYPQAbyrxOrRoihPz9vcMR5UjThCusm62zUE8eS9HyWV2o1HQ=
X-Received: by 2002:a05:6214:300e:b0:616:58f1:283e with SMTP id
 ke14-20020a056214300e00b0061658f1283emr11863640qvb.10.1683147412748; Wed, 03
 May 2023 13:56:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:e1c8:0:b0:5ef:4eab:adaf with HTTP; Wed, 3 May 2023
 13:56:52 -0700 (PDT)
Reply-To: mrsdominiquethomas7777@gmail.com
From:   Yonce Watson <yoncewatson5@gmail.com>
Date:   Wed, 3 May 2023 08:56:52 -1200
Message-ID: <CAGK_q1LLvhfHwFc1dpQjeHJbYR5nn8jd7GSorJbMTS_R8jFHTA@mail.gmail.com>
Subject: 
To:     annetterose702 <annetterose702@yahoo.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=4.1 required=5.0 tests=ADVANCE_FEE_5_NEW,BAYES_50,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,REPTO_419_FRAUD_GM,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

With warm hearts I offer my friendship and my greetings.

I was compelled to write you under a humanitarian ground.

With due respect and humility, I=E2=80=99m sincerely seeking your confidenc=
e
in this matter which I am about to propose with my free mind and as a
woman of integrity.

My name is Mrs. Dominique Thomas, I am 67 years old widow, I am
terminally ill, suffering from long time cancerous tumors, but now
undergoing medical treatment. And from all indications my condition is
really deteriorating and my doctors have courageously advised me that
I may not live all that long; this is because the cancer has reached a
critical stage.

I have some funds I inherited from my late loving husband, which he
deposited in a bank in Europe. I have decided to donate the funds for
a charity project in your town. Because, I shall be undergoing major
operations in less than two weeks from now, and my doctor have said in
confident that I only have 35% chance to survive these operations, due
to my critical stage of the cancer.

I took this decision, since I don't have any child that will inherit
this fund, and I don't want in a way my late husband=E2=80=99s hard earned
money will be misused.

If you assure me that you will use the fund for the intend purpose, my
heart will be at peace. I don=E2=80=99t know though, but I believe that God
Almighty will work through you, because, it is usually through someone
else that he meets our needs, charitable and indulgent to everyone.

I await your response.

Yours truly,
Dominique Thomas
Email:mrsdominiquethomas7777@gmail.com
