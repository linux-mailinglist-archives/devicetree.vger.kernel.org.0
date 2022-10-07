Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C63D75F7AA9
	for <lists+devicetree@lfdr.de>; Fri,  7 Oct 2022 17:38:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229880AbiJGPis (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Oct 2022 11:38:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229682AbiJGPir (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Oct 2022 11:38:47 -0400
Received: from mail-yw1-x1144.google.com (mail-yw1-x1144.google.com [IPv6:2607:f8b0:4864:20::1144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2BADCE983
        for <devicetree@vger.kernel.org>; Fri,  7 Oct 2022 08:38:46 -0700 (PDT)
Received: by mail-yw1-x1144.google.com with SMTP id 00721157ae682-35ad0584879so47823907b3.7
        for <devicetree@vger.kernel.org>; Fri, 07 Oct 2022 08:38:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X7t8yKUhnw51esVO0cP0SMDySLRVgCalW/fw1JsiZpI=;
        b=pT84QjZeizHY29ua4Y2bPJhSGN5KlAekXkmWdncxJ+4z6ggqYD7T3Gzq4l9nD+SjPU
         3NMCAAIog56AM6VT96jrP0Iury/t13Fq/I32kHMyK0TE6YO83Ee1vqWFh7XCkSPxHwWS
         nRO0E+56G/ia2l0IowoBCTCwSGYMhxLhikDUC+DHoybgFU04NN+Rc+0SpAN09pSS/JxI
         RLqJq/oECcpyZmh3p2nAgj+cuXRYmZdjFP3i7gSK/yzdD4SVqaaYUvai2o1djpZ4ke9t
         Hx0Supv65cQ1gkVvkVU/25WOLnIhiJWAEzrmMbQBIU6OSKJSESP7FTqHTVJ40k0S3quL
         M+Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X7t8yKUhnw51esVO0cP0SMDySLRVgCalW/fw1JsiZpI=;
        b=FM/myLeEHfhacwCxQiRsfN2y6aS9McScI7cSqSoekqtSVC+X3wQmNYZgDzAqrEhipk
         DZgSRE+BB1qtZ/UwlauoECtbsP6woiMByzujvr3UZPmcGsANPY9iI+TMqHq2XHysPNEy
         Jn0m3WDyXJn9Crv5HGkYUorpl+trpOgEwKzolTElAgDO9ymohf16QMjkxoTTtW937gDX
         eyYeTeo+5vevryxVj2s024x/wWeS0itbJx+xiwASnkJaqskDqaUFoZD8rWF2AbX0cfF9
         ajwjVy9AMh6He/YotDOligxwS/WoX1rsOWEwoQYo8urSCsjggq4w3zFx89InWE3zVy6T
         6gog==
X-Gm-Message-State: ACrzQf1yA+Fu4Ne1ZNdWuIymm6Ucve0WCvA4vPK4NhgySUpyLdUlEBmO
        6lg6Vo2dQduM0h5D+ieuCfOgOX6Df7s58OxbQw4=
X-Google-Smtp-Source: AMsMyM6GjJuifcQSsajqDaw5Q32M3YUxMORaJpLDBEmEMwlZIAkzIWrfI+7vvsqXwbWgRctiOj/EqsZ3mitvbj0kzFs=
X-Received: by 2002:a81:a4a:0:b0:357:f4f:c2d2 with SMTP id 71-20020a810a4a000000b003570f4fc2d2mr5401424ywk.84.1665157125934;
 Fri, 07 Oct 2022 08:38:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7010:9886:b0:306:af0f:4009 with HTTP; Fri, 7 Oct 2022
 08:38:45 -0700 (PDT)
Reply-To: financialdepartment9811@gmail.com
From:   "Financial Department U.S" <philipselence@gmail.com>
Date:   Fri, 7 Oct 2022 16:38:45 +0100
Message-ID: <CAELFF20+JjrbWNO0sFWKGayMkL_jNp-ugCNwWiE+34su2tPJkg@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.9 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
Dear friend,

I have an important message just get back for more details .

Sincerely,

Mr Jones Moore

Deputy department of the tresury

United States.
