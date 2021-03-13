Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E13A1339EB7
	for <lists+devicetree@lfdr.de>; Sat, 13 Mar 2021 15:59:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229615AbhCMO7W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 Mar 2021 09:59:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230309AbhCMO7V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 Mar 2021 09:59:21 -0500
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B84EC061574
        for <devicetree@vger.kernel.org>; Sat, 13 Mar 2021 06:59:21 -0800 (PST)
Received: by mail-oi1-x22b.google.com with SMTP id d16so20695796oic.0
        for <devicetree@vger.kernel.org>; Sat, 13 Mar 2021 06:59:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=tlf8w447PnkWDa8Ig8yXLZ5c7078B/Fouco3NbjfaNQ=;
        b=INjHsj/WgtkfHEry8D2N1PvdShj/Ww3IOfT+fpq9SIiyZPLje6vcjfTk+bvsi0HHUH
         BDicwuLotqtmVWC3S2HuKtVsDfI82T94DcP+QCISbQiOC4vW6BmzE1a7PsUjVdTIrIuj
         jwqe2XG2yQMQdW+ZyGQul3TsgD+w7dy7Z5lfaYe3nNnQU63vSFppFGMv/c7+jR1GTcES
         8kwGwEeY5FAjCmJP9GhLyNM4ARv5JX0CRG6DNjDGImDQOVGiicl9lF6/7Q1ffVTY5hva
         xVi0YttjHRApNzo67VxTx0zmyotvRRI4q4kzRVhPs0sYnMNsv6XCRFAHwpjEbLmwlHWs
         oLAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:content-transfer-encoding;
        bh=tlf8w447PnkWDa8Ig8yXLZ5c7078B/Fouco3NbjfaNQ=;
        b=X2OlI3b8VN/eBvrTmQF2y4lI9KkyE7W+Nvdun9KT60UqYXxc9kZi8B0P2+vKoEoP1f
         H42OZtKxUYy53cvWjlavi6+jfoqpJDa7RLFHgmt3gq3b/IJnfsZNGjJPwXeWhvJENjz0
         SUCCgj+YHAXupk1Ni8Kfu7DN/ri7npqoB9OJJVaYJle0xjYzsAMnivyegnbMfsMgyUeY
         wMhE3U4/pyNG3phq5SXeT47AjQXFZ9004qaKeWAMbANjsikg6RgLhSb9tz5JoiFkismu
         n6VEEcAZ2ucz9npjjjJCrvYa38POdeEHZ/H/9hXXxUhSMq0Dfj3ltQX7y2gAdUfhBBj2
         leZg==
X-Gm-Message-State: AOAM5310fHkRPKDz/nYK3e7+DVXyS/Wfvuee19nKWPbcRlXuo8ZI+WW3
        mZcFFtBIP+XkZ2RZnaQNH/G0XDFUn5t6f+tAiZo=
X-Google-Smtp-Source: ABdhPJwBT01NHRXdAhd7CFSjEw3h3lPgWoeKM2gOlowgYj2kUsL8i+OT8rOxMUf516aedgh+uzbYPXygCmygy7RtVGU=
X-Received: by 2002:aca:3114:: with SMTP id x20mr13409224oix.135.1615647560687;
 Sat, 13 Mar 2021 06:59:20 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6830:246a:0:0:0:0 with HTTP; Sat, 13 Mar 2021 06:59:20
 -0800 (PST)
Reply-To: stephenbordeaux@yahoo.com
From:   Stephen Bordeaux <essodina17@gmail.com>
Date:   Sat, 13 Mar 2021 15:59:20 +0100
Message-ID: <CAKzp8saJfJLezxZdzKFC511yDpfv1puHZZgqhwgyXcnfBpWzyg@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Ich habe mich aufgrund der mit dieser Frage verbundenen Dringlichkeit
entschlossen, Sie zu kontaktieren. Ich bin Stephen Bordeaux,
Rechtsanwalt. Ich pers=C3=B6nlich bin ein Treuhandagent von Dr. Edwin,
einem weithin bekannten unabh=C3=A4ngigen Auftragnehmer hier in Lome Togo,
der mit seiner Frau und seiner einzigen Tochter bei einem Autounfall
ums Leben kam. Ich habe Sie kontaktiert, um mich bei der R=C3=BCckf=C3=BChr=
ung
des Fondsverm=C3=B6gens zu unterst=C3=BCtzen. Acht Millionen f=C3=BCnfhunde=
rttausend
Dollar auf Ihr Konto. Bitte kontaktieren Sie mich f=C3=BCr weitere
Informationen zu diesem Thema.
