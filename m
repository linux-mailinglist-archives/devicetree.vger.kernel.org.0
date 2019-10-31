Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EF0C8EAC51
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2019 10:08:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727126AbfJaJII (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Oct 2019 05:08:08 -0400
Received: from mail-lj1-f194.google.com ([209.85.208.194]:46058 "EHLO
        mail-lj1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726864AbfJaJIH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Oct 2019 05:08:07 -0400
Received: by mail-lj1-f194.google.com with SMTP id q64so5729652ljb.12
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2019 02:08:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ki9Su1C1ZcadWDNv6felYRDZ7pL1Rs+pQA+auJlmjFI=;
        b=ccTrgxOv+vbxKnuWU/9vFPto0knnGugeOMspRM8WS5JPc9vt0fdeNGRUkvUFWL1VXg
         Fi4v42pz6S+GwgZ3Vw4qKmdg5t4Bj7umF+cyHPEaPMpXh9zF3ghK+DAAoJ/2sH/QH+VE
         WFNP+pftyNdBrgKjxBi+hfek+TPCzzNABAqArMHbY0L1g/NHcvknjEkF28awCRHNUKu0
         a8EyUMrk34sSkPRtKL9u40wBhl1/oDtPlgkbWoJBFx7vZCksxQGbXynUxBhYDMOoe0md
         IDK23GDY7VUDzgmVOKkLsi/ZliuxFJdijrN8OjOWrccXSiN6RWmhKuvR8ZqE2iUDDFem
         YTgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ki9Su1C1ZcadWDNv6felYRDZ7pL1Rs+pQA+auJlmjFI=;
        b=thYtFC/i2EL8mOVqqHp8GFJMzbz+iXBPeNIU06kGapK/p2odPI9MDN3wnPhBwBgg7D
         6t/SoxDH7/1BO50so4UZ1k/HwxjwxrNfdze4J7fwa3L4c/pd9ZX++FxooC5nnXVZatVM
         6oBNC3L3IZIruIca030JmJukBKk4y2TXxcvwi0zjaorrSUszjq6Ay+LtnXGEwHcVNGST
         eoPUBEJuvU6h98iy/KytGz+WtrQM6EuwbpP3re8W4xgkxKNP2eoRp4b+VyvmO5uSIQAf
         sEjKtlYA4UUdJgBbRkg3TVIpPwjIlKH2y6aDyhMuGVTFXfqnzC6W0EUFu7KZH+JueoE7
         0/tA==
X-Gm-Message-State: APjAAAVhag+9Hyu9dRNCV5Ynehy1NZnRnaxpmYM7w6U6Go1c8tDTOW2L
        vQf5iLdHi/DH8ODOtILg2dXM97DIhGjlNA==
X-Google-Smtp-Source: APXvYqzU3gxioMS1w0FtcH6XhBrD7gVzb3alF+jn8/kQCbMUORJzm5oKs6WG72p78AwKPIp55n6zsA==
X-Received: by 2002:a2e:82cd:: with SMTP id n13mr3270708ljh.2.1572512885720;
        Thu, 31 Oct 2019 02:08:05 -0700 (PDT)
Received: from localhost.localdomain (c-79c8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.200.121])
        by smtp.gmail.com with ESMTPSA id v10sm962927lji.46.2019.10.31.02.08.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 02:08:04 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     devicetree@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH] dt-bindings: Be explicit about installing deps
Date:   Thu, 31 Oct 2019 10:06:02 +0100
Message-Id: <20191031090602.28640-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Make sure the reader of the document is aware that some active
installation of the libyaml development package is required and
provide two examples.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 Documentation/devicetree/writing-schema.rst | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/writing-schema.rst b/Documentation/devicetree/writing-schema.rst
index f4a638072262..9690495f1dfd 100644
--- a/Documentation/devicetree/writing-schema.rst
+++ b/Documentation/devicetree/writing-schema.rst
@@ -118,7 +118,13 @@ project can be installed with pip::
     pip3 install git+https://github.com/devicetree-org/dt-schema.git@master
 
 dtc must also be built with YAML output support enabled. This requires that
-libyaml and its headers be installed on the host system.
+libyaml and its headers be installed on the host system. For some distributions
+that involves installing the development package, such as:
+
+Debian:
+  apt-get install libyaml-dev
+Fedora:
+  dnf -y install libyaml-devel
 
 Running checks
 ~~~~~~~~~~~~~~
-- 
2.21.0

