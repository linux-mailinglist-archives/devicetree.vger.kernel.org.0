Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DFA5A527548
	for <lists+devicetree@lfdr.de>; Sun, 15 May 2022 06:07:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231592AbiEOEHI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 15 May 2022 00:07:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229446AbiEOEHH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 15 May 2022 00:07:07 -0400
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com [IPv6:2607:f8b0:4864:20::e43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A270119C08
        for <devicetree@vger.kernel.org>; Sat, 14 May 2022 21:07:03 -0700 (PDT)
Received: by mail-vs1-xe43.google.com with SMTP id z144so12270058vsz.13
        for <devicetree@vger.kernel.org>; Sat, 14 May 2022 21:07:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:sender:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=yy784MKRy8irqMbGMSPnH31MndL/meMTA9+5FT5z1a8=;
        b=dUauy/XVuaGjXXc1lb4jVWYMkga4XmHOaZYfiJBFOX4NBDmjz4KTHmxseGqLLBGwpd
         Nuj0vYyuz90s0FBOXUlzSNOk3GzieNopZNT3leJkP7cDweaWDE0hIoAo5WnNNAvsiYnR
         tT2wjKw+c5seJMK/z65zwVxpFhtIq1ONxGFOC9JaY0/s+OYpi8uvhDRhpIok+jXtNsNP
         HtPhBdyw+RqL+SYYOGrlaMt21zYuL6rbrvgWyF2p6IY3u4gQ+Izzc3Kd73/LLa+8dAiz
         F6KQKnJXgSBZPi05XfqxVFklSyT5cIEYjgKlVdpty/7ztBZPHiiiHaxnyPW7m/ZZfz4z
         lfdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to:content-transfer-encoding;
        bh=yy784MKRy8irqMbGMSPnH31MndL/meMTA9+5FT5z1a8=;
        b=1KruwMg6yFggmKp35gYsKn0qb7qsKhI1lAk7GFmLOTuhQiq2AiDQ/s5JhDP+eRnNg6
         90E5Hdr708fDTxw84CBUFTJlB1he1XLTe2WTjpKPqsOot9cEqYoPaf2fKHqfGSAwFsMh
         t2nEEEdh71l1xt+ZgBEnj29ZHqq3nybNa6yBoXgryIaj8dYSGjflZqSaNuqZdLWj/TJB
         e57ozRdVw6cVmeMjhG6Go3ZUzYfsW5mDO5A/Qcveu/OXpZD7JYa2ViE+WCLkGYu+swp2
         ZzT3W2OO0rqjcUJjEfuA/Up/QTR0cUH+U9+CR7lRSgcHPRe2y0dkW9B62BVsZGal3dVu
         Df2w==
X-Gm-Message-State: AOAM532eZZ1GLM6EwVi8HRKzCjQBZUwisDk3wl/lLCv/Qq262DWfLR3i
        FNCw+O5oWp69kxbR54rhua8JPXy4Hv0Xx+lXUYc=
X-Google-Smtp-Source: ABdhPJz4HGls9b93pzCgOo2Rky+6m85SUqFRqxBrkV7jKYCMrYCDOvPZPmsJDPUqHs2RwOH/66d82CNUGZF5GdvFTq8=
X-Received: by 2002:a67:ce8f:0:b0:32d:15e:b749 with SMTP id
 c15-20020a67ce8f000000b0032d015eb749mr4703644vse.49.1652587622822; Sat, 14
 May 2022 21:07:02 -0700 (PDT)
MIME-Version: 1.0
Sender: sakponouedwige1@gmail.com
Received: by 2002:a67:e156:0:0:0:0:0 with HTTP; Sat, 14 May 2022 21:07:02
 -0700 (PDT)
From:   Kayla Manthey <sgtkayla2001@gmail.com>
Date:   Sun, 15 May 2022 04:07:02 +0000
X-Google-Sender-Auth: 495OgzXOKyvnGFht-eG_5mmhuYw
Message-ID: <CAPhVR5WLgf6Zt0qQ8L1spAHDdaDtUU4w4m=_q2AbVfW+T+rENQ@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=0.8 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--=20
Molim vas, =C5=BEelim znati jeste li dobili moje prethodne poruke. Hvala
