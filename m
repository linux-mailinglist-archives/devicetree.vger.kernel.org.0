Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 91A1C469639
	for <lists+devicetree@lfdr.de>; Mon,  6 Dec 2021 14:04:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243776AbhLFNIF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Dec 2021 08:08:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243753AbhLFNIE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Dec 2021 08:08:04 -0500
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CE70C0613F8
        for <devicetree@vger.kernel.org>; Mon,  6 Dec 2021 05:04:35 -0800 (PST)
Received: by mail-pj1-x102a.google.com with SMTP id k6-20020a17090a7f0600b001ad9d73b20bso5949903pjl.3
        for <devicetree@vger.kernel.org>; Mon, 06 Dec 2021 05:04:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gQR+kR3WwpJ3Zy26d331pKgr2CYPFgiv2xZ+MCXMP8M=;
        b=h/lHjJphG4555stXlAjuauMjPqax3T/xIUWCDpSsBXjMktavAXzGmylbtFiOziwDpe
         ZCDqmnZEJnuBljR3SdS0WhaZh4Ed/Fo+RATgXH/+ID5tC75UKcUm5vvt7hnhI2vzgKoj
         PqFIud/7E4pLwKXZ80cWh7C17RIxaImNqffZk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gQR+kR3WwpJ3Zy26d331pKgr2CYPFgiv2xZ+MCXMP8M=;
        b=WgWD6f41PZyFXmFy0GbcNEdinr+oCgP9DkjtL0oY7TRzJj3P+ZYwJwzAM0feUHlTbm
         oq9Ublg1tyNqAisjzQ6SMVJDfVj/C6bGdMBwl+jlOK6l0gx85yQ3FcHGvBqEJPePhJOR
         tCnNRNMznpTvRLw6o+ZTucn/qEeej9zgg/Oo28+4k/f3fatCdYQ4zhj4pe+ICgRcrnAK
         D3fEDs0p8iMUQzDKAbJ+obtIq1WS0u/ryfHEoi1m9fqV39/D3dlXg188+ZKJ/AcV7uLM
         poMzFnz/ZwtUnJSsLYYNhEopcg6aWro7O0tLr0SPkbW2+uEQW336SQXY7mr3bhOWyyjd
         l7Xw==
X-Gm-Message-State: AOAM530sbYfzg5S69Sk9vNj18MGKYwmdYp6yI8xYoN7UyJ7p8hruUvAm
        bQ2+80tj3TpgYDJ4a4RnmU8JtQ==
X-Google-Smtp-Source: ABdhPJw3w67XPpbowJr/xRyiaADp0b3n5k+jd8bmuixQtzKdWHKfEg0QX6nbBbiL+1/SvdSpMP0eyw==
X-Received: by 2002:a17:90b:4d08:: with SMTP id mw8mr37474521pjb.236.1638795875119;
        Mon, 06 Dec 2021 05:04:35 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:5044:6464:4ad7:572c])
        by smtp.gmail.com with ESMTPSA id v25sm12402292pfg.175.2021.12.06.05.04.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 05:04:34 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, linux-media@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        yong.wu@mediatek.com
Subject: [v6 2/3] dt-bindings: mediatek: Add mediatek, mt8183-jpgenc compatible
Date:   Mon,  6 Dec 2021 21:04:24 +0800
Message-Id: <20211206130425.184420-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.34.1.400.ga245620fadb-goog
In-Reply-To: <20211206130425.184420-1-hsinyi@chromium.org>
References: <20211206130425.184420-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add mediatek,mt8183-jpgenc compatible to binding document.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
v5->v6: no change, rebase to latest linux-next
---
 .../devicetree/bindings/media/mediatek-jpeg-encoder.yaml         | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.yaml b/Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.yaml
index 5e35ecfd21f1b7..fcd9b829e03662 100644
--- a/Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.yaml
+++ b/Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.yaml
@@ -17,6 +17,7 @@ properties:
     items:
       - enum:
           - mediatek,mt2701-jpgenc
+          - mediatek,mt8183-jpgenc
       - const: mediatek,mtk-jpgenc
   reg:
     maxItems: 1
-- 
2.34.1.400.ga245620fadb-goog

