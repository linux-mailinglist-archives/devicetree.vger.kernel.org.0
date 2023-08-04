Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 57306770633
	for <lists+devicetree@lfdr.de>; Fri,  4 Aug 2023 18:45:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229456AbjHDQpO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Aug 2023 12:45:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52810 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229812AbjHDQpO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Aug 2023 12:45:14 -0400
Received: from mail-yw1-x112f.google.com (mail-yw1-x112f.google.com [IPv6:2607:f8b0:4864:20::112f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A2D51BDD
        for <devicetree@vger.kernel.org>; Fri,  4 Aug 2023 09:45:13 -0700 (PDT)
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-583b019f1cbso25233647b3.3
        for <devicetree@vger.kernel.org>; Fri, 04 Aug 2023 09:45:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691167512; x=1691772312;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Gce3GksSyfK6ArVao849Q4zbn4ZS8EDW8/xWLe2xoow=;
        b=dJ+pWZlXWiqD83EvTF5Wldumlru/zTKTEJGN9K0GeVOyF0p+g3V0HmCm6JVBhR0tDk
         nF9JrwRXj8ObyiEA5YbzB4mpRPt9rdfbTCJJ2KMs7H7I/k5/yUmyor/g/SGOvbR3H3C9
         JkUFCd6aiFv3N+fXo8CP5PaKmTCEa9YLWZGgv6B74m6kJrz+dnicBdHaNYHW6bIRThcz
         Z08In0ItVQfA9eWx4Qw16n0HPG4l2+knznjpsMN/qmZotAaUWSJb61nlkIkMIhNmIaDr
         M72UpCBUQ71NFdXqSP0ejtZ//yZ1rPurGZhxt06jnSVhikfpInzir7O0lWk76117gTZ/
         sInQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691167512; x=1691772312;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Gce3GksSyfK6ArVao849Q4zbn4ZS8EDW8/xWLe2xoow=;
        b=EkeE8X8u0rl+p3VbVyEulimdl4zChJgndaXLeDLKeWfIBaOqnJwFeAJW9aIsajcIaU
         cV0p3dJVkfcHDuPXDLToCqUXFvtzRe70PaPxhnjQ988mlM8SR9kVbU5hMi/Nz5kwKHN5
         ydnpkP+R6+2OUVZ5T4fIys47RFDN+cu8O7jjcEhS2aDYRWdyIFSM5KWnammtxykT0xpJ
         PTC361Cv4C12SdsvNW7FX/qhsBzZRf4ML1oz+YFSWc5OMqhyvKTugYqysxAWDyJFCcg6
         8BlQa9472yt/CNyGL/3KZu3A/caNhttMzTLGCBaO+uXispu55/q9NCsVHVubK0UIhikG
         qGAw==
X-Gm-Message-State: AOJu0Yyx/gvkBUb/yhN2nB8/Z7/a1EVPrW6lZik+JQn+x+mHR+pGa7y6
        visWQODZDKHriS/wzp8jRqo=
X-Google-Smtp-Source: AGHT+IHELRicqMAiJC/xalDHV8MXFzkF2eGisVKk74KdSF4VX7ITLZiOTRPyH85xOmo1e+LXH34pqg==
X-Received: by 2002:a81:a186:0:b0:583:e92c:d9cf with SMTP id y128-20020a81a186000000b00583e92cd9cfmr2493659ywg.23.1691167512185;
        Fri, 04 Aug 2023 09:45:12 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id j63-20020a816e42000000b00582fae92aa7sm825248ywc.93.2023.08.04.09.45.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Aug 2023 09:45:11 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        neil.armstrong@linaro.org, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/2] Support Anbernic RG351V Panel
Date:   Fri,  4 Aug 2023 11:45:01 -0500
Message-Id: <20230804164503.135169-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Anbernic RG351V panel. This panel is mostly
identical to the one used in the 353 series, except it has a different
panel ID when queried (0x4000 for the 351V, 0x3052 for the 353 panel)
and will not work without the inclusion of the
MIPI_DSI_CLOCK_NON_CONTINUOUS flag.

Chris Morgan (2):
  dt-bindings: display: newvision,nv3051d: Add Anbernic 351V Support
  drm/panel: nv3051d: Add Support for Anbernic 351V

 .../display/panel/newvision,nv3051d.yaml       | 18 +++++++++++-------
 .../gpu/drm/panel/panel-newvision-nv3051d.c    | 18 ++++++++++++++++--
 2 files changed, 27 insertions(+), 9 deletions(-)

-- 
2.34.1

