Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C24BF639CA1
	for <lists+devicetree@lfdr.de>; Sun, 27 Nov 2022 20:54:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229529AbiK0TyS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Nov 2022 14:54:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229510AbiK0TyS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Nov 2022 14:54:18 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF526DEE0
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 11:54:16 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id o7-20020a05600c510700b003cffc0b3374so7048145wms.0
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 11:54:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:mime-version:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=biw1utCmNyI+ef9futimPqL2qrgw3YwY9eWMD1oBQZg=;
        b=O/Qopswpf3pUwj0IecsVsM+cimJ+a2XfJKsB1fdMxKbCE6Rsx1P+/cbdlJ5dLGgIw/
         xmeuDl/DzDPyA31ADuzik8a4kIW2fO7dkscqJV7cuVlyRvnhaEzqIhu07XNSBg1vuRNJ
         p1POxfTExVc9f25LEy9EYa7gwKjVJUg/DM4e6lWstNrJMTwA1BIpyVo3nSGtcTNpJs56
         /vjlr0q59SoEVDbk+TBQ92AmPFV4Lf1HJqSDmC1ZyjBT68LIl6ee3Wh6Y4WnQfmLw/50
         u2fM0LYN0zJAV+msvvYxmpC13x00ryN4/QYVd6PqkQsEtQ4huxyFq8YaBiKjTI4rCczh
         gqYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:mime-version:from:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=biw1utCmNyI+ef9futimPqL2qrgw3YwY9eWMD1oBQZg=;
        b=KP4UlJe2KmIPfH7bV4DuXKVR9NADCZ35knhy+LHwOFpvnHZNPckOV6d8Z/qB4jq7Hh
         N/tVSYtMhbhCFaqcRy4ZoHpjYYzJQc8kB7BtfFn2mt2OSuFcUFlEH/j1P9yK34k7GZy6
         r4GciCFQ+tYemkG4PZ820TDGW9X+3EMuJ4c+GZ8mCesyPEGybXEy+PMSgJSsrffOgxZT
         ZAc+1SyGgJd3EDBOsRWyaRqdunDk9mY651yC9fSLKmLogA6xI4NqbOlyCE5/u9BcEhUe
         m3N8uWm4mDtFnHf77+Txh+cJEOI2FzTfdxDxeF63u3fxHxviFEyXfhJqCiQv+GSDRCTz
         2BwA==
X-Gm-Message-State: ANoB5plzG+RjPdyP9db39rjlfmuGOBxMBWs0YTWVA/SKiXOngLdmlfyi
        +PdUf0Nt2h6mYM1E7dBIPzM/8UsE11PJuN/Z8BEwKhRYsacKsoVk
X-Google-Smtp-Source: AA0mqf5svgaVun3tspsXM91xa9Z9BkJ+YB73DdFC3Aw7AfOdqss8XN5qiDd5kBFxLogGDiC24dAaDjziOiu1dozqvo8=
X-Received: by 2002:a05:600c:35cf:b0:3cf:aa11:93a8 with SMTP id
 r15-20020a05600c35cf00b003cfaa1193a8mr39082561wmq.31.1669578855150; Sun, 27
 Nov 2022 11:54:15 -0800 (PST)
Received: from 332509754669 named unknown by gmailapi.google.com with
 HTTPREST; Sun, 27 Nov 2022 13:54:14 -0600
From:   HAROLD COOPER <haroldcooper810@gmail.com>
Mime-Version: 1.0
Date:   Sun, 27 Nov 2022 13:54:14 -0600
Message-ID: <CA+0JWio_nohbj_ENG27vHZOy1uNwpfDA4jyJuSNS4g79q5g7VQ@mail.gmail.com>
Subject: HARD HAT
To:     devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_40,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

To whom it may concern,
I would like to order HARD HAT . I would be glad if you could email me
back with the types and pricing you carry at the moment .

Regards ,
Mr HAROLD COOPER
PH: 813 750 7707
