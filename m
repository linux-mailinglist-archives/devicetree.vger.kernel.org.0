Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E98AC6781E9
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 17:41:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233354AbjAWQly (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 11:41:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233360AbjAWQld (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 11:41:33 -0500
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FDB32CFFD
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 08:40:50 -0800 (PST)
Received: by mail-pj1-x102f.google.com with SMTP id x2-20020a17090a46c200b002295ca9855aso15817410pjg.2
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 08:40:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VEdlNj5oGQ8HsVBCaYjphfQCvJbj24DR39NtSIHHu+c=;
        b=bmoyzLkFOm0ulSzOlhELl/PBbVJ2Q5hT4mcL9naaWxSHDc4xSjbpn606WxAP6RraLT
         uwbkmY7QueI7cVgqYvtPp42Zkk1DF0GBVmGODw8LAawOmnIUrWPR+ltAMrbaNPGSrRrz
         m2jJclIap8rClXNLFcGTU67J1/79rghzyU5UzKxkkPVxikScC6NRn7dokE0kaWGg2xtj
         b9juCwYsTd0XFntv0aqZXbGZnXXDDUiaSbR3B8STv6Yc/4veq79kExgW0dOj/DUplXxi
         pmwet+pdGmuN2QvThvBW8a6/pq0WCHx5qo5a/3+unyrCbpVLcTNINhtq32IFo1DvJtVI
         85Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VEdlNj5oGQ8HsVBCaYjphfQCvJbj24DR39NtSIHHu+c=;
        b=MGFFCJi5KId2g94l87mjN3h8R7eIz7OUIHkN2csylL3klG8U62MxV6zt+6mELmT5JB
         wiiNAQxKQNAc+ISFItsFVzeOp9w2AZJmW+GsqG78NNoC9HlFcvlxhON1yuhJQelOhEm2
         EgjPx8Wl3eTX9ThzZf4nKxH4rHQroXUKnLh7JamcUat8xvqRSD2M/BI1UZNEz5UXoM3G
         6BdJ2rcyONVfx57LGv3iLLx5oTT23web0j8mEPolVgcspbk9BJbHICz9I6PbZ89kbkZh
         a9RtIQ96lNlGstIs8ZpOrvYzEzbERucxDKMA8Rx7B6XX0fQx+6ThEx4jX+RH8Qe9wcEc
         nb9A==
X-Gm-Message-State: AFqh2kq9BxU+C1u/9WlO2wJRNWJdRT9b5LMxs+Di2hiTon+mTlWX7cFX
        1mGyA3j7p9FwU8qUbIjF6A7MvA==
X-Google-Smtp-Source: AMrXdXtxlEvkoZnGh+RPY4XpTzfAD4zeR5koPnz80BaGyn4oau9sgWIXID8Knk1gt0MICIg/oNgxDg==
X-Received: by 2002:a17:902:ba88:b0:193:1fc5:f611 with SMTP id k8-20020a170902ba8800b001931fc5f611mr25344304pls.38.1674492043774;
        Mon, 23 Jan 2023 08:40:43 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a15f:2279:f361:f93b:7971])
        by smtp.gmail.com with ESMTPSA id a3-20020a170902710300b0019269969d14sm17679971pll.282.2023.01.23.08.40.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 08:40:43 -0800 (PST)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 3/4] dt-bindings: display: panel: jadard,jd9365da-h3: Add Radxa Display 8HD
Date:   Mon, 23 Jan 2023 22:10:17 +0530
Message-Id: <20230123164018.403037-3-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230123164018.403037-1-jagan@edgeble.ai>
References: <20230123164018.403037-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Radxa Display 8HD is a family of DSI panels from Radxa that
uses jd9365da-h3 IC.

Add compatible string for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 .../devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml    | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
index 10ba1b813304..d81b7fab4604 100644
--- a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
+++ b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
@@ -17,6 +17,7 @@ properties:
     items:
       - enum:
           - radxa,display-10hd-ad001
+          - radxa,display-8hd-ad002
       - const: jadard,jd9365da-h3
 
   reg: true
-- 
2.25.1

