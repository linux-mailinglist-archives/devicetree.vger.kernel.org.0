Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A5F529702C
	for <lists+devicetree@lfdr.de>; Fri, 23 Oct 2020 15:19:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S464429AbgJWNTd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Oct 2020 09:19:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S464426AbgJWNTc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Oct 2020 09:19:32 -0400
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com [IPv6:2a00:1450:4864:20::142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 505FEC0613D4
        for <devicetree@vger.kernel.org>; Fri, 23 Oct 2020 06:19:32 -0700 (PDT)
Received: by mail-lf1-x142.google.com with SMTP id j30so2057210lfp.4
        for <devicetree@vger.kernel.org>; Fri, 23 Oct 2020 06:19:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gkX+2gUi+v8i47aSHUAizP4Ds7j6F45LzqwxJroTws0=;
        b=Z/wgNcMVhdp16LL6ZQWvlDZnxOeAJfCVSNOty5uKbdAEduIs6JIxbsHZjQGYzEj6l3
         jkeG3UWtq+oKNGjCG9KbQ3Urh1wRg0MhHk7Fh2zYs04JRPYhJYyrXSLPHYs20OVMxavl
         3YPCChAk4MYNJlbg3JjhmsQwJdWz7/ZmuLfiLuaIGsd5cWraWsbvT5CJMt8ghcffBWtb
         EZXtNnvx5aSGkmQgzBt2Dk0VVnL7v81RhtonwfPXAyhOYNnNy0crJv0jAa78+5xNrYjK
         SH1jU5oVP5lmL7lqvkuGR0tjyMBk0gAk1xJ2wN05kYTqppe9nnIugZsqpKVB7uyQPlir
         tlMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gkX+2gUi+v8i47aSHUAizP4Ds7j6F45LzqwxJroTws0=;
        b=BgPtSuzLjlUphaGgO010Oeb3Y3jSativJMoayoKow+j67rmf1vE7g5lObyGc98vXck
         rrAOfd6cKpEScGvFr8F+3lrpYnY9ipntAvULleOYX3AZo8tq4nkBSnJCcf+qTMLnOU75
         +1jG1tM0JuqOL04Pfq0UhDb0pl45KWFK0m0eiBP59f9zrVtUiU+ERDeGd5QGT8kv10Tq
         Cim27raIpj/N//xPMUz6g3tQhDj/mgbVtlF7aBhCPv36b3DEGGAep29PlJtUElEfaJbi
         0xRqHV07aBAv0A0LDRr6DYSK25p8VskQ+D5gby5frRKxPVBYQck2ULfl0RSwdHkLe0AH
         1xmw==
X-Gm-Message-State: AOAM530BHgrNmAbXwBQX7Y30wns6RqYZKtTrhlIAjScAIF55Zs5Z8NWx
        9L0OdkeCtw9BNEaZpfRKX6IDFQ==
X-Google-Smtp-Source: ABdhPJwKRS1l0bWn+x3x3WMk7PvtBibC5R1oMkR5S6y7F7XYMl6I2GvcgR+rbri7PKkeVqIUDRgk0A==
X-Received: by 2002:a19:c8d6:: with SMTP id y205mr715023lff.293.1603459170604;
        Fri, 23 Oct 2020 06:19:30 -0700 (PDT)
Received: from eriador.lan ([188.162.64.195])
        by smtp.gmail.com with ESMTPSA id o22sm161564ljg.122.2020.10.23.06.19.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2020 06:19:29 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Jonathan Marek <jonathan@marek.ca>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/5] 
Date:   Fri, 23 Oct 2020 16:19:20 +0300
Message-Id: <20201023131925.334864-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On SM8250 MDSS_GDSC (and the rest of display clock controller) is
supplied power by MMCX power domain. Handle this link in GDSC code by
binding the power domain in dts file.

This patchset depends on [1]

Changes since v1:
 - Define fixed-regulator-domain regulator using power domain
   performance state for enabling/disabling.
 - Rework to use new fixed regulator type (fixed-regulator-domain)
   instead of controlling power domain directly from gdsc code.

Changes since RFC:
 - Fix naming of gdsc_supply_on/gdsc_supply_off functions
 - Fix detaching of solo gdsc's power domain in error handling code
 - Drop the dts patch, as respective display nodes are still not
   submitted to the mailing list.

[1]
https://lore.kernel.org/linux-arm-msm/20200927190653.13876-1-jonathan@marek.ca/


