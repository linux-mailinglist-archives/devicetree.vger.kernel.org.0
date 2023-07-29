Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A6281767C1B
	for <lists+devicetree@lfdr.de>; Sat, 29 Jul 2023 06:31:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230523AbjG2EbC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Jul 2023 00:31:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229685AbjG2EbB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 29 Jul 2023 00:31:01 -0400
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com [IPv6:2607:f8b0:4864:20::1135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0091E113
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 21:31:00 -0700 (PDT)
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-583ad8ab0faso2678257b3.0
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 21:31:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690605060; x=1691209860;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RE5l1VpxCufAhFhvUtJmOdSBkyXi7tvoVHorDEIVEKk=;
        b=ZJfSP9Ai5zq8/2gGe3AWaxRYSIWcMGMa0VSeMPe2GQbcZjA5+fcsmnDuKEGuu6x197
         D/K6G2utnm5RNrm0jrpJpmqoZWyq5kZgEP4s+sZCZyBe9f4niOAXuZhBxGjGxCEgSOGQ
         6CphsLLz29Lk6iUJbgXTBFsbLp8VQ3phkyn2rrSbQ4OwyMDmIN6qMyDIbScjIWd7bNoG
         oGFeOryUSsfVKuFlfpMTkXSOtUTL02bgoPzM8BTHQDPOnX8DwD3D/AjtyJ2i08vi4pV+
         72PkineKcOkvH3nK+7Gw6zJECTt6VrbUt/BrJVP4TmEDkFOvRxP7XvqA0WKIyFENdJu/
         /euQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690605060; x=1691209860;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RE5l1VpxCufAhFhvUtJmOdSBkyXi7tvoVHorDEIVEKk=;
        b=iRsZz+2rghMFGKO5731lTP5twudoLM6T+hOYvORLDDGHh0N+FtJqSaCGEjPCecbDFn
         Cmwnu+8prBlnHZWnuAUSLBjrn+wFVo/njmPwfoqNIBo+pPxryylUOWFHzfEQ2Srm8qUa
         wchwfW55JjJ9UBtRdMxvyNrxp+C/wR5ArWZMGbCMW3CxLjd4TdMiStlEid6zH5QXE332
         eVoTxa9yAsKmZLlrccy48N98ygSdm+91OjBTWECelIQ1xaCxn8XeSaqSjhXWq0qPM3R2
         ToLRkeunGIk31Z/vKBKQp6XB3POetbVbsbmOLuCB2zFMuDi81syamM+4yaPCCz37p1aD
         bkxQ==
X-Gm-Message-State: ABy/qLZvmPSQL4z/bYvsUj5tNRXJ63nHSrqfN5JHawLiusluZ0K2ukSV
        /6OisGrygabAXR/mbn5rd3rmKXZp4O8GdG9rL2k=
X-Google-Smtp-Source: APBJJlFdZKfziF3CIJ9oAZkLeL6OiyForpbBK41JsZRKBhGzAZdyvCmRUqYdl9l8SOG3GhuusHlNOoJOUzj1bk5ZozY=
X-Received: by 2002:a81:6dd8:0:b0:567:7dc3:2618 with SMTP id
 i207-20020a816dd8000000b005677dc32618mr507301ywc.1.1690605060080; Fri, 28 Jul
 2023 21:31:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7108:6326:b0:31a:14a8:aa9e with HTTP; Fri, 28 Jul 2023
 21:30:59 -0700 (PDT)
Reply-To: bintu37999@gmail.com
From:   Bintu Felicia <yerobarry10@gmail.com>
Date:   Sat, 29 Jul 2023 05:30:59 +0100
Message-ID: <CAD1=OdU8CNRTkW-trhk78giS0M7Csu=qw30JfYK9hAYsXvXKuw@mail.gmail.com>
Subject: HELLO
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.7 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

How are you today? I hope you are fine. My name is Miss
Bintu Felicia . l am single looking for honest and nice
person whom i can partner with . I don't care about
your color, ethnicity, Status or Sex. Upon your reply to
this mail I will tell you more about myself and send you
more of my picture .I am sending you this beautiful mail,
with a wish for much happiness.

Warm regards,

Felicia Bintu
