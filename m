Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2E15C350612
	for <lists+devicetree@lfdr.de>; Wed, 31 Mar 2021 20:13:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233831AbhCaSNC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Mar 2021 14:13:02 -0400
Received: from mickerik.phytec.de ([195.145.39.210]:54796 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234589AbhCaSMo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Mar 2021 14:12:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1617214361; x=1619806361;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=HgWklEZ/Qmsy2I1/9oCMGs2ZqMzGW6imvOwtF/0rjHU=;
        b=fm1mI1lRQmQBVb7HQ9A6TIgK3921HiAby16qr4YFchxwvGBAR56JplXgtDCc+ezm
        62nzoC6oC2zIMYHoOMr9WxBh9mfO4mzAccVAxRNavfGdoVJXDXjC9HQkn6amFsOv
        fyDodGOhYQB+DKEAOI8gskdahhhv3qu+EQQ+2/c8Dtw=;
X-AuditID: c39127d2-868b870000001c91-40-6064bb998d69
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 61.36.07313.99BB4606; Wed, 31 Mar 2021 20:12:41 +0200 (CEST)
Received: from lws-ybas.phytec.de ([172.16.21.122])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2021033120124154-278054 ;
          Wed, 31 Mar 2021 20:12:41 +0200 
From:   Yunus Bas <y.bas@phytec.de>
To:     devicetree@vger.kernel.org, robh+dt@kernel.org
Cc:     thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
        daniel@ffwll.ch
Subject: [PATCH 2/2] dt-bindings: display: simple: Add EDT ETM0350G0DH6
Date:   Wed, 31 Mar 2021 20:13:17 +0200
Message-Id: <20210331181317.464926-2-y.bas@phytec.de>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210331181317.464926-1-y.bas@phytec.de>
References: <20210331181317.464926-1-y.bas@phytec.de>
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 31.03.2021 20:12:41,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 31.03.2021 20:12:41
X-TNEFEvaluated: 1
Content-Transfer-Encoding: quoted-printable
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrPLMWRmVeSWpSXmKPExsWyRoCBS3fm7pQEg4mndC16z51ksvi/bSKz
        xfwj51gtWvceYbdY8XMro8XPXfNYHNg89n5bwOKxc9Zddo9NqzrZPLZ/e8DqsWTaVTaPz5vk
        AtiiuGxSUnMyy1KL9O0SuDKeXXjGWvCMo2LHnM0sDYz97F2MnBwSAiYS888uY+xi5OIQEtjG
        KHF6znomCOc8o8TBO0tYQarYBBQlzt9+C2aLCBhJrNz7mRnEZhYIlNjZ8A1skrCAu8SivYdY
        QGwWAVWJbT072EBsXgFTiQWPWlggtslLnFx7mAnE5hQwk/ixZB/QHA6gZaYSzb/0IcoFJU7O
        fMICcoOEwBVGiaWHdzJB9ApJnF58FmqvtsSyha+ZJzAKzELSMwtJagEj0ypGodzM5OzUosxs
        vYKMypLUZL2U1E2MwEA+PFH90g7GvjkehxiZOBgPMUpwMCuJ8AofSEwQ4k1JrKxKLcqPLyrN
        SS0+xCjNwaIkzruBtyRMSCA9sSQ1OzW1ILUIJsvEwSnVwNjIJn/Iem/4Ks2XzT1ffTY7vVlY
        EMPXVZOhdFfnTvjR6ydD/HSDt8zR4Gvt3HLv1fee1986jv+I2+Uldv/K1TJLDq/MxCi1pK6g
        DMlov8rY5JWX7Bf8e3wiky2Ko6qgWkZCXuHypQlXgq4v/Jv0TVysk0mA+/1949UFixpyE4uk
        7hmEzi5SV2Ipzkg01GIuKk4EALMQNe1SAgAA
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Emerging Display Technology ETM0350G0DH6 is a 3.5" WVGA TFT panel
with capacitive multitouch. Add it to the list of compatibles.

Signed-off-by: Yunus Bas <y.bas@phytec.de>
---
 .../devicetree/bindings/display/panel/panel-simple.yaml        | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.y=
aml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index e15942cd02ef..51ab42426f84 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -110,6 +110,9 @@ properties:
         # Emerging Display Technology Corp. 5.7" VGA TFT LCD panel
       - edt,et057090dhu
       - edt,et070080dh6
+        # Emerging Display Technology Corp. 3.5" WVGA TFT LCD panel with
+        # capacitive multitouch
+      - edt,etm0350g0dh6
         # Emerging Display Technology Corp. 480x272 TFT Display with capac=
itive touch
       - edt,etm043080dh6gp
         # Emerging Display Technology Corp. 480x272 TFT Display
--=20
2.30.0

