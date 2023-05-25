Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 69F357117D2
	for <lists+devicetree@lfdr.de>; Thu, 25 May 2023 22:07:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232420AbjEYUHx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 May 2023 16:07:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233284AbjEYUHw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 May 2023 16:07:52 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18910AA
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 13:07:51 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-973bf581759so154253366b.0
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 13:07:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685045269; x=1687637269;
        h=content-transfer-encoding:to:subject:message-id:date:from:sender
         :reply-to:mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8WjCLoJJObEB3nHgXYCX85Ri1ZVTg9NhxJd7ffJpQgo=;
        b=pOEAfKb7p39K93l/quYwy4Aqm3l2aPFVzG/HMcInbfX34uECC7KfJFSnhKD8sTIqET
         vVuii71TYCo3kgwm9X8VfIpcohUqFl5WmxhLX+J6z0PVqKrToxGawnh/tXhARNv75on4
         Y9d/5iJp7qjauiRNLxShA5AMpoujHhvlfXtRSAL5hrU/LNno9meAqB2JmnEl4D3ObKVL
         YbDiAJN7GBZh6TIo761SjyNfXAQkOz55OmDNiUVdKusepl2ps7jDa028c6NCmSsXrViW
         zs1sszwQwgMM72BfKj33ixQuRSWYD1V222042FfQjQdVruxDIrXN/12g5iUE6HdKIz9e
         sC5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685045269; x=1687637269;
        h=content-transfer-encoding:to:subject:message-id:date:from:sender
         :reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8WjCLoJJObEB3nHgXYCX85Ri1ZVTg9NhxJd7ffJpQgo=;
        b=Y6S9cDZoTyzNWT7khjrWHW5YeOPQqBRpdXGGDxohc0TKSpfWOP5iPfRd8+7qzDrO15
         TolanicJRqtVyD1TZGASGCjGH6ThVS6iooYQrREWKOD1TnjZtQsHs4knyFKr7CxxKAL9
         rHtzbdccUPOqVjXiQbAz/SMnXYGXjtdvvX6IixLz3SPftcmIXYX+bp9EH+1nWwSesS7n
         6ce5+gbb3/PvfMbfQDvCvw1y8Ui8kEfvFuEABtPJP49BaQQJXDsYPTmmdXih+fDSUuel
         EfXzFCeYEedWrW1lNle28arsrvR5GbGpxyMALr1dq7MqQ3GqOus3tiEna9Lo/Gfyvpbu
         7d5w==
X-Gm-Message-State: AC+VfDwzMiQVBYBkDKUFiIkd5EzvHDIK28sw69YsQkc4cyTu8X5n4bbN
        kTXQMhqtlWs5Fp869pM2YYn0CHxQDCbRRh22VH0=
X-Google-Smtp-Source: ACHHUZ7haN/RnPcDiv7OENaSPyQzYtDUVYNb9kRJtlxIbKHXU8hn25hxrROl+YXVvIQ6WA6rU1kHCS4hzrvnuKcV4ls=
X-Received: by 2002:a17:907:7288:b0:966:634d:9d84 with SMTP id
 dt8-20020a170907728800b00966634d9d84mr2604846ejc.20.1685045269254; Thu, 25
 May 2023 13:07:49 -0700 (PDT)
MIME-Version: 1.0
Reply-To: mrstheresenina112@gmail.com
Sender: westernunionm499@gmail.com
Received: by 2002:a98:df8f:0:b0:1ce:6d9e:76e2 with HTTP; Thu, 25 May 2023
 13:07:48 -0700 (PDT)
From:   "Mrs. Therese Nina" <mrstheresenina112@gmail.com>
Date:   Thu, 25 May 2023 22:07:48 +0200
X-Google-Sender-Auth: BYC2uEStNlD6SwMeJZY-B2sd4Tc
Message-ID: <CAAwyaLDJ-2FvM=Eqz8SvjsoF5Ljt_HDcgqYC_e3E8UR4Cxa2pA@mail.gmail.com>
Subject: My Dear
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: Yes, score=5.6 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO_END_DIGIT,LOTS_OF_MONEY,MONEY_FRAUD_3,
        MONEY_FREEMAIL_REPTO,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_HK_NAME_FM_MR_MRS,T_SCC_BODY_TEXT_LINE,UNDISC_MONEY autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Report: *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5008]
        * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2a00:1450:4864:20:0:0:0:62c listed in]
        [list.dnswl.org]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [westernunionm499[at]gmail.com]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [westernunionm499[at]gmail.com]
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [mrstheresenina112[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  0.0 T_HK_NAME_FM_MR_MRS No description available.
        *  0.0 LOTS_OF_MONEY Huge... sums of money
        *  1.8 MONEY_FREEMAIL_REPTO Lots of money from someone using free
        *      email?
        *  2.7 UNDISC_MONEY Undisclosed recipients + money/fraud signs
        *  0.0 MONEY_FRAUD_3 Lots of money and several fraud phrases
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Good Day

I write you this letter from the heart full of sincerity and tension,
My Name are Mrs. Therese Nina, from Norway, I am married to Mr.
Patrick Nina, A gold merchant who owns a small gold Mine in Austria;
He died of cardiovascular disease in March 2011. During his lifetime
he deposited the sum of =E2=82=AC 8.5 Million Euro in a bank in Austria.

I am not in good health in which I sleep every night without knowing
if I may be alive to see the next day. I am suffering from long term
cancer illness which has become almost impossible for me to move
around, I have decided to donate what I have to you for the support of
helping Motherless babies less privileged Widows' because I am dying
and diagnosed with cancer for about two years ago.

I need a very honest person who can claim this money and use it for
Charity works, for orphanages, widows and also build schools for less
privilege that will be named after my late husband and my name and I
will give you more information on how the fund will be transferred to
your bank account.

Best Regards
Mrs. Therese Nina
