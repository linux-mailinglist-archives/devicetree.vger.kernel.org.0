Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 73F415933D1
	for <lists+devicetree@lfdr.de>; Mon, 15 Aug 2022 19:07:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229701AbiHORH1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Aug 2022 13:07:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229508AbiHORH0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Aug 2022 13:07:26 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B8DE2611A
        for <devicetree@vger.kernel.org>; Mon, 15 Aug 2022 10:07:25 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id bx38so8191929ljb.10
        for <devicetree@vger.kernel.org>; Mon, 15 Aug 2022 10:07:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:sender:mime-version:from:to:cc;
        bh=Bifx0Qn2vvuOTmVB21VJZoCa8Ns87biHQp6AX9XPu3g=;
        b=UJB3nBrIJe1nehOjMEJE0kEznKeeghtQFm7M/4ZrZSBIlcRCpTMRlB3jsC4PctBepk
         b2ymIg4B+3GLeQFs7zpDGhcrflWvvW+rIa6hlMc+gCXa5C2jXaJBPyL01YpWuBwqgGA7
         4WNEI0j4hdjuFak1886f+B9uqLskGsla28dNdaOMkoPNJWVX/5pniOcKrlEvYoJXxqr/
         bw+YQ4An9m667hYInD9h5tOnbIWQnaiGD63oQ07zU8kfJdSPpzuONv/jNPYkBdMX2WKN
         tugqZ9S7o/XuBmpW4/ZGS09K0uo70XaK/VhDanMcX4ZZ7sfQ5rzX2haVRioBgf+aRlC8
         L6xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:sender:mime-version
         :x-gm-message-state:from:to:cc;
        bh=Bifx0Qn2vvuOTmVB21VJZoCa8Ns87biHQp6AX9XPu3g=;
        b=qtT+H9lCze/awWNVypZzx0P3FkICS6VTBLcUviTG37nBNqD+HHwdAngcfq5wDBPTqQ
         zCLqvmRR6UKuWZMDxZxb5Nab9L0pIbbz1dAZXR7LTWvi1IBm3ZbN+OCgRD7ysZrhmDtp
         +Ylh/Ml67RAIJBJJRUh3RURXv94N0nMnpRxuBHLTEMayVGclBAPWT2MAWLG+QBmcgLxz
         W8TlI56aZBiohyoe0a+TtoenExdgfkbZxwTeKO1a0ciUniTweA/DYAbBK+dn9SB0Iy8D
         R0ITYMHu2c67RkTWQJz9g3j4vZGFDkqLhMxxaqRCjYJkiS+An7Do+bniFkXHfi3Hdoom
         P22g==
X-Gm-Message-State: ACgBeo1c56PLVRxUKIWPY98v50glnGB4x1+heQnF3AKalf3ajeUuMbfv
        A3brRC94cKal6RVdXE+A7UePaiNsLBFk6e1JEHc=
X-Google-Smtp-Source: AA6agR5BXBsubuqIa3liGTFwWyxeq5C95UBLv2a/US6vNSQtL9Kkr099jC/R6vPhvF2I32aM+36znUur9aHVCVsNKpw=
X-Received: by 2002:a2e:a808:0:b0:25f:f326:f2ab with SMTP id
 l8-20020a2ea808000000b0025ff326f2abmr5503971ljq.152.1660583243045; Mon, 15
 Aug 2022 10:07:23 -0700 (PDT)
MIME-Version: 1.0
Sender: akpakikossijoe@gmail.com
Received: by 2002:ab2:21cc:0:b0:153:1085:361e with HTTP; Mon, 15 Aug 2022
 10:07:22 -0700 (PDT)
From:   Tomani David <davidtomani24@gmail.com>
Date:   Mon, 15 Aug 2022 17:07:22 +0000
X-Google-Sender-Auth: jrlbmRkIOVIc97QAEzyfeQz5Xaw
Message-ID: <CACHAoSs1QES+q6WL+A6Xw4CJn5tky49_PvfLbHi-4r5wY7Tmqg@mail.gmail.com>
Subject: I have a message for you
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=0.6 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Good evening,

I hope you are still using this email address


Regards,
Mr. David
