Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 950253DB36B
	for <lists+devicetree@lfdr.de>; Fri, 30 Jul 2021 08:18:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237398AbhG3GSs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Jul 2021 02:18:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237423AbhG3GSq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Jul 2021 02:18:46 -0400
Received: from mail-pj1-x104a.google.com (mail-pj1-x104a.google.com [IPv6:2607:f8b0:4864:20::104a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90F3BC061798
        for <devicetree@vger.kernel.org>; Thu, 29 Jul 2021 23:18:41 -0700 (PDT)
Received: by mail-pj1-x104a.google.com with SMTP id o23-20020a17090a4217b02901774c248202so7434483pjg.9
        for <devicetree@vger.kernel.org>; Thu, 29 Jul 2021 23:18:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=GiuZxc2vIiLi2GqaesW3uMQvAdi+WLEB0SZDBvMyFBc=;
        b=foRUqLVlSjmizeJNocTQye6ZVD67JVkh3FdovVxhNjH/zTyA+gDaWirmQ648Vicltl
         7Wjn9luTlCmJb9MASEjDbju5cJnELhETFLPwR8J/c2PBblG4zzf9ICys3tOj1lBDOKYG
         bUjvulpTDKezUyAzu2oLm8yn4+AuEcevzuiV2NdnaWsEHYgeaghIOTgXdxq6vjd+Kgfx
         GJiB2EXr45j2UvVUOI8S+U+F/bRNeZXrxVYGnyZB1BDy7DPTbWHzW/J2W+66G7hOSW8e
         jGMeFz8BEqXG1keUgJASuuxOF2bhzSkW4y1pxYr7JpmdZeac6eKEdG7GMM8wZ8XpMJg9
         AP6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=GiuZxc2vIiLi2GqaesW3uMQvAdi+WLEB0SZDBvMyFBc=;
        b=gvek6khEE7RrX+ZPaAL0xVXDjIS5YxR5eD2iiurJ6pt4euzu+qpFhQh4RwnHEbCTOj
         ucM2pVJGizIjNhor5NF+QH+OpV8J1EdOXauZYx7IMaS3Yev/SN+lO7FKKPpeAgmTu+Ym
         eC0SSm5JuoMj8YZ+9oFe3KOle4dLdSIUKSmcKey6r0tvUfK1bbqWW9emCD8upB6UUU+x
         erMVgoEqGD3fkSqqX/+f2RrJpw2fBZO145nMTHY3Gt3IGRRHt5VeBpMmBdAgZUenO/ND
         j4WmvoowNUOa8vYbRocQcfxExWf8Wqdk5MCrvEKg1PdcpQUbIArwadz42ls2nILSpLht
         Ktfw==
X-Gm-Message-State: AOAM533FCR/CSlcIRovwN7nr40bTr7FmXmoug9iXxyjNT8d6TNNMvopH
        sEyHWqbLYo3XcNw9J8DYhlrENcAGqsR7
X-Google-Smtp-Source: ABdhPJxRLZzV90fv+eOS9sQCQta4PC7QWfahHEWOZkvZSOVQpALydjuegoahhKh4WJqZv3fZ2bva2yaJud8+
X-Received: from kyletso.ntc.corp.google.com ([2401:fa00:fc:202:6892:a74:4970:a062])
 (user=kyletso job=sendgmr) by 2002:aa7:8246:0:b029:39a:1e0a:cd48 with SMTP id
 e6-20020aa782460000b029039a1e0acd48mr1408472pfn.14.1627625920974; Thu, 29 Jul
 2021 23:18:40 -0700 (PDT)
Date:   Fri, 30 Jul 2021 14:18:31 +0800
In-Reply-To: <20210730061832.1927936-1-kyletso@google.com>
Message-Id: <20210730061832.1927936-2-kyletso@google.com>
Mime-Version: 1.0
References: <20210730061832.1927936-1-kyletso@google.com>
X-Mailer: git-send-email 2.32.0.554.ge1b32706d8-goog
Subject: [PATCH v4 1/2] dt-bindings: connector: Add pd-supported property
From:   Kyle Tso <kyletso@google.com>
To:     linux@roeck-us.net, heikki.krogerus@linux.intel.com,
        gregkh@linuxfoundation.org, robh+dt@kernel.org
Cc:     badhri@google.com, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Kyle Tso <kyletso@google.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Set "pd-unsupported" property if the Type-C connector has no power
delivery support.

Signed-off-by: Kyle Tso <kyletso@google.com>
---
 .../devicetree/bindings/connector/usb-connector.yaml          | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/connector/usb-connector.yaml b/Documentation/devicetree/bindings/connector/usb-connector.yaml
index 92b49bc37939..21ec470117a6 100644
--- a/Documentation/devicetree/bindings/connector/usb-connector.yaml
+++ b/Documentation/devicetree/bindings/connector/usb-connector.yaml
@@ -111,6 +111,10 @@ properties:
       - 1.5A
       - 3.0A
 
+  pd-unsupported:
+    description: Set this property if the Type-C connector has no power delivery support.
+    type: boolean
+
   # The following are optional properties for "usb-c-connector" with power
   # delivery support.
   source-pdos:
-- 
2.32.0.554.ge1b32706d8-goog

