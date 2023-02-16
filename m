Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 34EC1698B21
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 04:23:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229522AbjBPDXH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Feb 2023 22:23:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229595AbjBPDXG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Feb 2023 22:23:06 -0500
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com [IPv6:2a00:1450:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 857F53C36
        for <devicetree@vger.kernel.org>; Wed, 15 Feb 2023 19:23:00 -0800 (PST)
Received: by mail-ej1-x641.google.com with SMTP id lf10so2022278ejc.5
        for <devicetree@vger.kernel.org>; Wed, 15 Feb 2023 19:23:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:sender
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=IEumXS4rOcdReYHdVWZtpksFH0eQyC3leLZXJJc5uio=;
        b=NeKCEf3n9HR2I/p80I3zRQV+XRfLXyhPY91cYBJc12KroPeyze0mculCDm57QQXY72
         WxU2ljQvHHaTDZ4i3QKA8X666iKW91Xe0g3/KzDf33TXIzxRDFnkDA/c//qDqUhEisRH
         hYaW3t1cwzTnFuzCng3hnAxMTolIwj05bZ0K59SYlchlYx/Hm+gl1kmtf5IlM8WLT1Yj
         ueV2rQ1iATc28P8CKOtWd7kmO4ISXjxYr30CnxToYca99CgS7sxW71JEv1ZHV2zB1T8U
         sYhETLqowrahgDxxkEMaetQ86bQfw9ckQGX0THEWM+QgmePHgW6i8AaL/zuXw/5IbVFR
         1pYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:sender
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IEumXS4rOcdReYHdVWZtpksFH0eQyC3leLZXJJc5uio=;
        b=EqN3jHx9tId8CSd84AJhEoLy3TuM8X+MfPAaF2Lt009wfK3wv3hk/qPC4T6JZa7bjM
         bNS84sTjCsOfxPcE03IQDWHCO/V1zrMx1ZwATS/PZlZtwnklCrWXrtGGv/qY9AdFf///
         bLvrRsOiOvY6uh7WF6dsiaKSA/o9980iUWgOVv/CFvXpd0vf+eHWHxA6Vyljmn6dC3U7
         htleio5w+wIOR0y6FvnCxWgwx5+KMIVjJmzYu7qLys/s7cAwDQLAAFe+lZZrXP1cRzcP
         Lb6wcTyageHiHFc+7gD/49qZtDqhtihb8qZKIVIo4GijBEs8kjux2mHuS9T2NQng79iZ
         xNnw==
X-Gm-Message-State: AO0yUKVo65n00+DxxGoNr7zYcMUoHkGfh/1ZXcJmQGY91IBPrPjujU3B
        zIleg7UzmxiMQOMMj4YAp3A3vrKrUedXznZOD9oE8RicqpnaDqEYdZA5ng==
X-Google-Smtp-Source: AK7set9ZcoF5to0YAjSQKuzDclwe11ZF5HiQHpxJ0q8wT/0T0RVOjDWI5pimydlGf2IxtCcR2LJaQcmOKWl5ZhTgaj8=
X-Received: by 2002:a17:906:1919:b0:8b1:3361:ee17 with SMTP id
 a25-20020a170906191900b008b13361ee17mr2146077eje.9.1676517779052; Wed, 15 Feb
 2023 19:22:59 -0800 (PST)
MIME-Version: 1.0
Sender: abelmouhamedfolly@gmail.com
Received: by 2002:a05:7208:55a2:b0:62:7af3:61bf with HTTP; Wed, 15 Feb 2023
 19:22:58 -0800 (PST)
From:   Miss Sherri <sherrigallagher409@gmail.com>
Date:   Thu, 16 Feb 2023 03:22:58 +0000
X-Google-Sender-Auth: ZcRCOMtL-NpIi4JZDuZqo7P8n_w
Message-ID: <CAF5EFSqMzLLkwuJKV1pnMbC=F+x6X=d3_+eW2DyOd8Dpq2zwvQ@mail.gmail.com>
Subject: RE: Hi Dear
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_HK_NAME_FM_MR_MRS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Cze=C5=9B=C4=87,

Otrzyma=C5=82e=C5=9B moj=C4=85 poprzedni=C4=85 wiadomo=C5=9B=C4=87? Skontak=
towa=C5=82em si=C4=99 z tob=C4=85
wcze=C5=9Bniej, ale wiadomo=C5=9B=C4=87 nie wr=C3=B3ci=C5=82a, wi=C4=99c po=
stanowi=C5=82em napisa=C4=87
ponownie. Potwierd=C5=BA, czy to otrzymasz, abym m=C3=B3g=C5=82 kontynuowa=
=C4=87,

czekam na Twoj=C4=85 odpowied=C5=BA.

Pozdrowienia,
Pani Sherry
