Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AAC3B350610
	for <lists+devicetree@lfdr.de>; Wed, 31 Mar 2021 20:13:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234707AbhCaSNB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Mar 2021 14:13:01 -0400
Received: from mickerik.phytec.de ([195.145.39.210]:54796 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234442AbhCaSMn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Mar 2021 14:12:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1617214361; x=1619806361;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=+YevCWLRUQUSp/nEcLk5VZj23mn5SJ7OgSyYzQdhfeU=;
        b=qFNLdVeiTKXDoZy3e5uEsfYTyk1XX4asj64TzqMgdi5IhyS4ZEMDM1bH+F9PL992
        qIUx86m64R+3CxYvuzx8VJLaG/cwORgszJ7D5t4Snr2OATu6Gd8yYZ6LKm0NF5bG
        mDutJRALYYBVH8kUDWB1z680xfd4lcX1Y23Sb1+rYOg=;
X-AuditID: c39127d2-85cb770000001c91-3f-6064bb999643
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id F0.36.07313.99BB4606; Wed, 31 Mar 2021 20:12:41 +0200 (CEST)
Received: from lws-ybas.phytec.de ([172.16.21.122])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2021033120124130-278053 ;
          Wed, 31 Mar 2021 20:12:41 +0200 
From:   Yunus Bas <y.bas@phytec.de>
To:     devicetree@vger.kernel.org, robh+dt@kernel.org
Cc:     thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
        daniel@ffwll.ch
Subject: [PATCH 1/2] dt-bindings: display: simple: Add EDT ETMV570G2DHU
Date:   Wed, 31 Mar 2021 20:13:16 +0200
Message-Id: <20210331181317.464926-1-y.bas@phytec.de>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 31.03.2021 20:12:41,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 31.03.2021 20:12:41
X-TNEFEvaluated: 1
Content-Transfer-Encoding: quoted-printable
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrOLMWRmVeSWpSXmKPExsWyRoCBS3fm7pQEg+7dUha9504yWfzfNpHZ
        Yv6Rc6wWrXuPsFus+LmV0eLnrnksDmwee78tYPHYOesuu8emVZ1sHtu/PWD1WDLtKpvH501y
        AWxRXDYpqTmZZalF+nYJXBkHuo8yFezlqHj7aw5rA+MLti5GTg4JAROJq//eMXUxcnEICWxj
        lFg8q5cVwjnPKNF2fw4TSBWbgKLE+dtvWUFsEQEjiZV7PzOD2MwCgRI7G76xg9jCAu4S3d0T
        wKayCKhKzHv3CyjOwcErYCrxexEvxDJ5iZNrD4ON5BUQlDg58wkLyC4JgSuMEksP72SCKBKS
        OL34LNR8bYllC18zT2Dkm4WkZxaS1AJGplWMQrmZydmpRZnZegUZlSWpyXopqZsYgYF5eKL6
        pR2MfXM8DjEycTAeYpTgYFYS4RU+kJggxJuSWFmVWpQfX1Sak1p8iFGag0VJnHcDb0mYkEB6
        YklqdmpqQWoRTJaJg1OqgbHiTi1/mNPdvjbj3MTiozIGl4KqjmgoHbT58J6rzEHQof7t46eR
        3nrmai0F2Xkbe7Tv9f5O6px/fYnLpE1/7bsbP6gEMZ4wnruk89TThrVZ8S6p5ktel+2ZNGXd
        FP9vXqpL+qyV5A4J75/LtJZjt8njfjeuE7s8Lv0yM7xf4Hi+KCGrNfrBViWW4oxEQy3mouJE
        AEgxEcw6AgAA
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Emerging Display Technology ETMV570G2DHU is a 5.7" VGA TFT panel.
Add it to the list of compatibles.

Signed-off-by: Yunus Bas <y.bas@phytec.de>
---
 .../devicetree/bindings/display/panel/panel-simple.yaml        | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.y=
aml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 62b0d54d87b7..e15942cd02ef 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -128,6 +128,9 @@ properties:
         # Emerging Display Technology Corp. WVGA TFT Display with capaciti=
ve touch
       - edt,etm0700g0dh6
       - edt,etm0700g0edh6
+        # Emerging Display Technology Corp. 5.7" VGA TFT LCD panel with
+        # capacitive touch
+      - edt,etmv570g2dhu
         # Evervision Electronics Co. Ltd. VGG804821 5.0" WVGA TFT LCD Panel
       - evervision,vgg804821
         # Foxlink Group 5" WVGA TFT LCD panel
--=20
2.30.0

