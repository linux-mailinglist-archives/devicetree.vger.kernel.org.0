Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5909C40A454
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 05:23:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237777AbhINDYW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Sep 2021 23:24:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238786AbhINDYQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Sep 2021 23:24:16 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A491BC061760
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 20:22:59 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id m21-20020a17090a859500b00197688449c4so1687661pjn.0
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 20:22:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=C0Pyszb77kVFDjaQaXOEMOCa900lerPKMQKPppnAJQE=;
        b=0INH2Bplst7+ZbmgVuhok9MU/n0Qi1bLUfBwcxdaa9J3m4tHivoOILLqQCQKIaWrKC
         P7+kG8mL2xGcn6NKojhGLytFJTIO5ojEtoc6ZYxamPjPH1SdjMyQebPt5zgCB5ZO0O53
         zTEpOGQ+i1mk/K9FCy5CHYyfp2xkLEiub/p1X+B5Xc56tO6KBCJ1WbxMOmA2ry8+XDMh
         5TYmk0bI8C+dItSoA3cfCVjR3Rd8+FvTvzH5771ehZHdHgD26sN555tVlHQ55iL3/jnq
         86MC0p5F7FbyHQua9t+WOfM+CB0LodetPYAoeeDU8OwRSGQQ1iOCZNybRyuMyUwjviau
         gKJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=C0Pyszb77kVFDjaQaXOEMOCa900lerPKMQKPppnAJQE=;
        b=OP8Eq65mEDUF699RpT8Lu81keqbbCj2HCFg29AlWRZ2AW5bEZAWskb2azAY6XWAR1T
         duPxURaY6rUtsvLBdlUvcQxUb1gTR8AQW+mNcHMRJohQhctMCw8X98byiEzMxS9lw9iT
         /ppOS18gbO3qK9MWc0Ktg5JCjp1D+A7P/V3VU+LBc3Y5zSImF4gJDuplg/wCOkou9XSw
         RcRuJpfMIhXheBGt9mg2TrMCQPYb8JS7hv0RQctQit2vZqI8fKMkyH11Cmj+VvZ+9r4U
         8HVl6FdWc+fnjHXnT4HeEY+STcGpIfCBs9glpuueni2ZdfJqwjUTNo7tDE3u1xCedM2T
         a+uw==
X-Gm-Message-State: AOAM5322EsI6Bghv5prQsSVYM1r7knhToVGGPXtnh+4LfP9TlYz5e0At
        pKUwhY6BwJJvXJUmebZLZdnN4w==
X-Google-Smtp-Source: ABdhPJz1DdZK49E07+QyJY5WTECud5A1UoAqX7gpd3q2PdmbPMkP+OUkd6dZhi70kekwXNO1cnbs3g==
X-Received: by 2002:a17:902:8ec5:b0:13a:2789:cbb0 with SMTP id x5-20020a1709028ec500b0013a2789cbb0mr13323405plo.60.1631589779166;
        Mon, 13 Sep 2021 20:22:59 -0700 (PDT)
Received: from yc.huaqin.com ([101.78.151.213])
        by smtp.gmail.com with ESMTPSA id x15sm9354101pgt.34.2021.09.13.20.22.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Sep 2021 20:22:58 -0700 (PDT)
From:   yangcong <yangcong5@huaqin.corp-partner.google.com>
To:     thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
        daniel@ffwll.ch, dianders@google.com
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        yangcong <yangcong5@huaqin.corp-partner.google.com>
Subject: [v6 0/4] drm/panel: boe-tv101wum-nl6: Support enabling a 3.3V rail
Date:   Tue, 14 Sep 2021 11:22:48 +0800
Message-Id: <20210914032252.3770756-1-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Compared to v5, squash this with patch #3 in the series in 
drm/panel: boe-tv101wum-nl6

yangcong (4):
  drm/panel: boe-tv101wum-nl6: Support enabling a 3.3V rail
  dt-bindings: drm/panel: boe-tv101wum-nl6: Support enabling a 3.3V rail
  drm/panel: support for BOE and INX video mode panel
  dt-bindings: boe, tv101wum-n16: Add compatible for boe tv110c9m-ll3
    and inx hj110iz-01a

 .../display/panel/boe,tv101wum-nl6.yaml       |   7 +
 .../gpu/drm/panel/panel-boe-tv101wum-nl6.c    | 745 +++++++++++++++++-
 2 files changed, 750 insertions(+), 2 deletions(-)

-- 
2.25.1

