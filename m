Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4858E52C43B
	for <lists+devicetree@lfdr.de>; Wed, 18 May 2022 22:23:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242297AbiERUIB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 May 2022 16:08:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242314AbiERUH6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 May 2022 16:07:58 -0400
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BED32375EB
        for <devicetree@vger.kernel.org>; Wed, 18 May 2022 13:07:56 -0700 (PDT)
Received: by mail-ot1-x336.google.com with SMTP id p12-20020a9d4e0c000000b00606b40860a3so2107963otf.11
        for <devicetree@vger.kernel.org>; Wed, 18 May 2022 13:07:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=WgtNrJrhv5bCTIhJBeU8a6bia5VueZCuqtt19PJobgc=;
        b=m/R7+4+FpGTf4xWdG6rKoNguLNzHDKCbXTDgmtDNIyZ1OTRLFxXKHZx73pWHn6rgsA
         16PsXlcCi2+zblZNp8bqn3Y0ZxkrKF7FVX4eZZBKbW+4blOn1GSPs5nF2XZIibnj9Kpi
         Bvdgr19bkM121NgCX0qn5u52ktfdCIy/Jarss=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=WgtNrJrhv5bCTIhJBeU8a6bia5VueZCuqtt19PJobgc=;
        b=lMeR+yvszjJY3P5YubcqzgMF9IalLwBg23F6hTQIdrVVCvNalcWCVCFn3x8UeC9xaP
         INsPsAAl0UlnxMBUgc9+i2a+K5a3kn+V1nEkVK0aNIATaPEPMbQiC3A4AviJEQPvtJ56
         8wjcFGHAn15KfXr0EjuWlpnksXRg0IY5GisSRwWivPhOkGUZKoYiw+sdQK9BIj/GBlhe
         X09BDM3BHzzZhKAKsuUZ/zbnRaJ2xng2kQUedUivTBdLZGmfbLc0ewiLkbQ4cIH3d376
         e9zuHPuP0g7YnamocpUhLlxMZoxgS3q0kdf+JY4foXyE/oDW+kTSGmpPOBk2k0q/Z+qa
         Cj2Q==
X-Gm-Message-State: AOAM532F1DBGSGu9dekK6VF6YthO/8sirnYqYiy9tvIDz+nLA+aGy4hR
        wFUMFUE2OjBw9ZUnIXL2/ZnigsLXvhL309Vs2031v8CgrIk=
X-Google-Smtp-Source: ABdhPJyJ7ONb1oWdAUazJjnnAp03o8+2u/wSw0YPZbj8oBuS2WRzetKTsNkIKSn0J98vjcan1tYa4qs+574uLdYie8I=
X-Received: by 2002:a05:6830:13ce:b0:606:702b:87f0 with SMTP id
 e14-20020a05683013ce00b00606702b87f0mr561772otq.159.1652904475487; Wed, 18
 May 2022 13:07:55 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 18 May 2022 13:07:55 -0700
MIME-Version: 1.0
In-Reply-To: <YoR+w7CSqN0aAE5b@google.com>
References: <20220516183452.942008-1-swboyd@chromium.org> <YoR+w7CSqN0aAE5b@google.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Wed, 18 May 2022 13:07:55 -0700
Message-ID: <CAE-0n50KE9bkqZvCOLtCGiq3g1jYhK7zpVcVFBzinaguNhNaPw@mail.gmail.com>
Subject: Re: [PATCH v5 0/2] Input: cros-ec-keyb: Better matrixless support
To:     Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc:     linux-kernel@vger.kernel.org, patches@lists.linux.dev,
        chrome-platform@lists.linux.dev,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        "Joseph S. Barrera III" <joebar@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Dmitry Torokhov (2022-05-17 22:06:11)
> Hi Stephen,
>
> On Mon, May 16, 2022 at 11:34:50AM -0700, Stephen Boyd wrote:
> > This is a followup to my previous patch[1] that skips keyboard registration
> > when the matrix properties aren't present. This adds a compatible string
> > for this scenario so we can ease existing DTBs over to the new design.
>
> As discussed offlist I massaged the binding and the driver code a bit
> and applied it to an immutable branch off v5.17:
>
>         git://git.kernel.org/pub/scm/linux/kernel/git/dtor/input.git ib/5.17-cros-ec-keyb
>
> that you can share with DTS maintainer(s) to accelerate DTS conversions.
>
> I also dropped the original patch as it did not make it to Linus' tree
> yet.
>

Ok thanks. Doug noticed some problems with the dt binding. Here's a
follow up patch that you can squash in or apply on top.

---8<---
From: Stephen Boyd <swboyd@chromium.org>
Date: Wed, 18 May 2022 13:03:58 -0700
Subject: [PATCH] dt-bindings: google,cros-ec-keyb: Fixup bad compatible match

This uses anyOf which is wrong. Use oneOf and move the items under the
description. Also drop allOf for $ref.

Reported-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 .../bindings/input/google,cros-ec-keyb.yaml           | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
b/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
index e11cbf508723..c31a02149f37 100644
--- a/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
+++ b/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
@@ -20,13 +20,11 @@ description: |

 properties:
   compatible:
-    anyOf:
+    oneOf:
       - description: ChromeOS EC with only buttons/switches
-      - items:
-          - const: google,cros-ec-keyb-switches
+        const: google,cros-ec-keyb-switches
       - description: ChromeOS EC with keyboard and possibly buttons/switches
-      - items:
-          - const: google,cros-ec-keyb
+        const: google,cros-ec-keyb

   google,needs-ghost-filter:
     description:
@@ -58,8 +56,7 @@ if:
       contains:
         const: google,cros-ec-keyb
 then:
-  allOf:
-    - $ref: "/schemas/input/matrix-keymap.yaml#"
+  $ref: "/schemas/input/matrix-keymap.yaml#"
   required:
     - keypad,num-rows
     - keypad,num-columns
-- 
https://chromeos.dev
